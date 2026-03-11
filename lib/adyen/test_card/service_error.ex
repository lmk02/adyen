defmodule Adyen.TestCard.ServiceError do
  @moduledoc """
  Provides struct and type for a ServiceError
  """

  @type t :: %__MODULE__{
          errorCode: String.t() | nil,
          errorType: String.t() | nil,
          message: String.t() | nil,
          pspReference: String.t() | nil,
          status: integer | nil
        }

  defstruct [:errorCode, :errorType, :message, :pspReference, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      errorCode: :string,
      errorType: :string,
      message: :string,
      pspReference: :string,
      status: {:integer, "int32"}
    ]
  end
end
