defmodule Adyen.LegalEntity.V1.TransferInstrumentReference do
  @moduledoc """
  Provides struct and type for a TransferInstrumentReference
  """

  @type t :: %__MODULE__{
          accountIdentifier: String.t(),
          id: String.t(),
          realLastFour: String.t() | nil,
          trustedSource: boolean | nil
        }

  defstruct [:accountIdentifier, :id, :realLastFour, :trustedSource]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountIdentifier: :string, id: :string, realLastFour: :string, trustedSource: :boolean]
  end
end
