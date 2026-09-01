defmodule Adyen.DocumentCollector.V1.DocumentUploadRequest do
  @moduledoc """
  Provides struct and type for a DocumentUploadRequest
  """

  @type t :: %__MODULE__{context: String.t(), file: binary, merchantAccount: String.t()}

  defstruct [:context, :file, :merchantAccount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [context: {:const, "paCbInvoice"}, file: {:string, "binary"}, merchantAccount: :string]
  end
end
