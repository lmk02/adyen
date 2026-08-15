defmodule Adyen.Management.V1.Surcharge do
  @moduledoc """
  Provides struct and type for a Surcharge
  """

  @type t :: %__MODULE__{
          askConfirmation: boolean | nil,
          configurations: [Adyen.Management.V1.Configuration.t()] | nil,
          disclosureOnPresentCard: boolean | nil,
          excludeGratuityFromSurcharge: boolean | nil
        }

  defstruct [
    :askConfirmation,
    :configurations,
    :disclosureOnPresentCard,
    :excludeGratuityFromSurcharge
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      askConfirmation: :boolean,
      configurations: [{Adyen.Management.V1.Configuration, :t}],
      disclosureOnPresentCard: :boolean,
      excludeGratuityFromSurcharge: :boolean
    ]
  end
end
