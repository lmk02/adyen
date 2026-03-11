defmodule Adyen.Hop.V5.CollectInformation do
  @moduledoc """
  Provides struct and type for a CollectInformation
  """

  @type t :: %__MODULE__{
          bankDetails: boolean | nil,
          businessDetails: boolean | nil,
          individualDetails: boolean | nil,
          legalArrangementDetails: boolean | nil,
          pciQuestionnaire: boolean | nil,
          shareholderDetails: boolean | nil
        }

  defstruct [
    :bankDetails,
    :businessDetails,
    :individualDetails,
    :legalArrangementDetails,
    :pciQuestionnaire,
    :shareholderDetails
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bankDetails: :boolean,
      businessDetails: :boolean,
      individualDetails: :boolean,
      legalArrangementDetails: :boolean,
      pciQuestionnaire: :boolean,
      shareholderDetails: :boolean
    ]
  end
end
