defmodule Adyen.BalancePlatform.V1.ListMandatesResponse do
  @moduledoc """
  Provides struct and type for a ListMandatesResponse
  """

  @type t :: %__MODULE__{
          link: Adyen.BalancePlatform.V1.Link.t(),
          mandates: [Adyen.BalancePlatform.V1.Mandate.t()]
        }

  defstruct [:link, :mandates]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      link: {Adyen.BalancePlatform.V1.Link, :t},
      mandates: [{Adyen.BalancePlatform.V1.Mandate, :t}]
    ]
  end
end
