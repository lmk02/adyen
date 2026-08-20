defmodule Adyen.DocumentCollector.V1.DocumentUploadResponse do
  @moduledoc """
  Provides struct and type for a DocumentUploadResponse
  """

  @type t :: %__MODULE__{
          context: String.t() | nil,
          fileName: String.t() | nil,
          merchantAccount: String.t() | nil,
          pspReference: String.t() | nil
        }

  defstruct [:context, :fileName, :merchantAccount, :pspReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [context: :string, fileName: :string, merchantAccount: :string, pspReference: :string]
  end
end
