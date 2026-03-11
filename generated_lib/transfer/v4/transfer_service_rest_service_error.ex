defmodule Adyen.Transfer.V4.TransferServiceRestServiceError do
  @moduledoc """
  Provides struct and type for a TransferServiceRestServiceError
  """

  @type t :: %__MODULE__{
          detail: String.t(),
          errorCode: String.t(),
          instance: String.t() | nil,
          invalidFields: [Adyen.Transfer.V4.InvalidField.t()] | nil,
          requestId: String.t() | nil,
          response: map | nil,
          routingDetails: [Adyen.Transfer.V4.RoutingDetails.t()] | nil,
          status: integer,
          title: String.t(),
          type: String.t()
        }

  defstruct [
    :detail,
    :errorCode,
    :instance,
    :invalidFields,
    :requestId,
    :response,
    :routingDetails,
    :status,
    :title,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      detail: :string,
      errorCode: :string,
      instance: :string,
      invalidFields: [{Adyen.Transfer.V4.InvalidField, :t}],
      requestId: :string,
      response: :map,
      routingDetails: [{Adyen.Transfer.V4.RoutingDetails, :t}],
      status: {:integer, "int32"},
      title: :string,
      type: :string
    ]
  end
end
