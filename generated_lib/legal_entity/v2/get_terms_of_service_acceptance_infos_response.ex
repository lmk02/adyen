defmodule Adyen.LegalEntity.V2.GetTermsOfServiceAcceptanceInfosResponse do
  @moduledoc """
  Provides struct and type for a GetTermsOfServiceAcceptanceInfosResponse
  """

  @type t :: %__MODULE__{data: [Adyen.LegalEntity.V2.TermsOfServiceAcceptanceInfo.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{Adyen.LegalEntity.V2.TermsOfServiceAcceptanceInfo, :t}]]
  end
end
