defmodule Adyen.Management.V3.ReceiptOptions do
  @moduledoc """
  Provides struct and type for a ReceiptOptions
  """

  @type t :: %__MODULE__{
          headerLine1: String.t() | nil,
          headerLine2: String.t() | nil,
          logo: String.t() | nil,
          promptBeforePrinting: boolean | nil,
          qrCodeData: String.t() | nil
        }

  defstruct [:headerLine1, :headerLine2, :logo, :promptBeforePrinting, :qrCodeData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      headerLine1: :string,
      headerLine2: :string,
      logo: :string,
      promptBeforePrinting: :boolean,
      qrCodeData: :string
    ]
  end
end
