defmodule Adyen.LegalEntity.GetTermsOfServiceAcceptanceInfosResponse do
  @moduledoc """
  Provides struct and type for a GetTermsOfServiceAcceptanceInfosResponse
  """

  @type t :: %__MODULE__{data: [Adyen.LegalEntity.TermsOfServiceAcceptanceInfo.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{Adyen.LegalEntity.TermsOfServiceAcceptanceInfo, :t}]]
  end
end
