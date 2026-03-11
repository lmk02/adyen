defmodule Adyen.LegalEntity.V1.CheckTaxElectronicDeliveryConsentResponse do
  @moduledoc """
  Provides struct and type for a CheckTaxElectronicDeliveryConsentResponse
  """

  @type t :: %__MODULE__{US1099k: boolean | nil}

  defstruct [:US1099k]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [US1099k: :boolean]
  end
end
