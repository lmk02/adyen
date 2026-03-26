defmodule Adyen.BalancePlatform.V2.ListMandatesResponse do
  @moduledoc """
  Provides struct and type for a ListMandatesResponse
  """

  @type t :: %__MODULE__{
          link: Adyen.BalancePlatform.V2.Link.t(),
          mandates: [Adyen.BalancePlatform.V2.Mandate.t()]
        }

  defstruct [:link, :mandates]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      link: {Adyen.BalancePlatform.V2.Link, :t},
      mandates: [{Adyen.BalancePlatform.V2.Mandate, :t}]
    ]
  end
end
