defmodule Adyen.LegalEntity.V3.GetPciQuestionnaireInfosResponse do
  @moduledoc """
  Provides struct and type for a GetPciQuestionnaireInfosResponse
  """

  @type t :: %__MODULE__{data: [Adyen.LegalEntity.V3.PciDocumentInfo.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{Adyen.LegalEntity.V3.PciDocumentInfo, :t}]]
  end
end
