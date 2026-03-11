defmodule Adyen.Management.V3.ReceiptOptions do
  @moduledoc """
  Provides struct and type for a ReceiptOptions
  """

  @type t :: %__MODULE__{
          logo: String.t() | nil,
          promptBeforePrinting: boolean | nil,
          qrCodeData: String.t() | nil
        }

  defstruct [:logo, :promptBeforePrinting, :qrCodeData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [logo: :string, promptBeforePrinting: :boolean, qrCodeData: :string]
  end
end
