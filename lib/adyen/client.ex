defmodule Adyen.Client do
  @moduledoc """
  HTTP client for Adyen API requests using Req.

  This module implements the `request/1` callback expected by `oapi_generator`.
  All generated API operations call this module to execute HTTP requests through `Req`.
  """

  require Logger

  @doc """
  Execute an HTTP request to the Adyen API.
  """
  @spec request(map()) :: {:ok, any()} | {:error, Adyen.Error.t()}
  def request(%{method: method, url: url, opts: opts} = req) do
    body = Map.get(req, :body)
    query = Map.get(req, :query, [])
    response_mappings = Map.get(req, :response, [])

    {service_name, expected_version} = detect_context(req)

    version = Adyen.Config.version(service_name, expected_version)
    api_key = Adyen.Config.api_key(service_name, opts)
    base_url = Adyen.Config.base_url(service_name, version, opts)

    request =
      Req.new(
        base_url: base_url,
        headers: [
          {"x-api-key", api_key},
          {"content-type", "application/json"}
        ],
        retry: :transient,
        max_retries: 3,
        decode_body: false
      )

    request_opts =
      [method: method, url: url]
      |> add_body_opts(body)
      |> maybe_add_query(query)

    case Req.request(request, request_opts) do
      {:ok, %Req.Response{status: status, body: body}} ->
        handle_response(status, body, response_mappings)

      {:error, exception} ->
        {:error, Adyen.Error.from_exception(exception)}
    end
  end

  defp detect_context(%{call: {module, _func}}) do
    case Module.split(module) do
      ["Adyen", service_str, version_str | _] ->
        service = Adyen.Config.resolve_service_name(service_str)
        version = String.downcase(version_str)
        {service, version}

      _ ->
        {"CheckoutService", nil}
    end
  end

  defp detect_context(_req), do: {"CheckoutService", nil}

  defp handle_response(status, body, response_mappings) do
    is_success = status in 200..299

    case find_response_type(status, response_mappings) do
      {module, :t} ->
        case Poison.decode(body, as: prototype_for(module)) do
          {:ok, decoded_struct} -> format_result(is_success, decoded_struct)
          {:error, _} -> format_fallback(is_success, status, body)
        end

      _ ->
        format_fallback(is_success, status, body)
    end
  end

  defp format_result(true, data), do: {:ok, data}
  defp format_result(false, data), do: {:error, data}

  defp format_fallback(true, _status, body), do: {:ok, decode_json(body)}
  defp format_fallback(false, status, body), do: {:error, Adyen.Error.from_response(status, decode_json(body))}

  defp decode_json(body) do
    case Poison.decode(body) do
      {:ok, map} -> map
      _ -> body
    end
  end

  defp prototype_for(module) do
    if Code.ensure_loaded?(module) and function_exported?(module, :__fields__, 1) do
      proto_fields =
        for {name, type} <- module.__fields__(:t),
            val = resolve_type(type),
            not is_nil(val),
            do: {name, val}

      struct(module, proto_fields)
    else
      struct(module)
    end
  end

  defp resolve_type({module, :t}), do: prototype_for(module)
  defp resolve_type([{module, :t}]), do: [prototype_for(module)]
  defp resolve_type(_), do: nil

  defp find_response_type(status, response_mappings) do
    Enum.find_value(response_mappings, fn
      {^status, type} -> type
      _ -> nil
    end)
  end

  defp add_body_opts(opts, nil), do: opts

  defp add_body_opts(opts, body) do
    {:ok, json} = Poison.encode(body)
    Keyword.put(opts, :body, json)
  end

  defp maybe_add_query(opts, []), do: opts
  defp maybe_add_query(opts, query), do: Keyword.put(opts, :params, query)
end
