defmodule Adyen.LegalEntity.V2.PciSigningResponse do
  @moduledoc """
  Provides struct and type for a PciSigningResponse
  """

  @type t :: %__MODULE__{pciQuestionnaireIds: [String.t()] | nil, signedBy: String.t() | nil}

  defstruct [:pciQuestionnaireIds, :signedBy]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [pciQuestionnaireIds: [:string], signedBy: :string]
  end
end
