defmodule Adyen.Management.V3.Surcharge do
  @moduledoc """
  Provides struct and type for a Surcharge
  """

  @type t :: %__MODULE__{
          askConfirmation: boolean | nil,
          configurations: [Adyen.Management.V3.Configuration.t()] | nil,
          excludeGratuityFromSurcharge: boolean | nil
        }

  defstruct [:askConfirmation, :configurations, :excludeGratuityFromSurcharge]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      askConfirmation: :boolean,
      configurations: [{Adyen.Management.V3.Configuration, :t}],
      excludeGratuityFromSurcharge: :boolean
    ]
  end
end
