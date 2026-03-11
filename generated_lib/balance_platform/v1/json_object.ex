defmodule Adyen.BalancePlatform.V1.JSONObject do
  @moduledoc """
  Provides struct and type for a JSONObject
  """

  @type t :: %__MODULE__{
          paths: [Adyen.BalancePlatform.V1.JSONPath.t()] | nil,
          rootPath: Adyen.BalancePlatform.V1.JSONPath.t() | nil
        }

  defstruct [:paths, :rootPath]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      paths: [{Adyen.BalancePlatform.V1.JSONPath, :t}],
      rootPath: {Adyen.BalancePlatform.V1.JSONPath, :t}
    ]
  end
end
