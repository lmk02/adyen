defmodule Adyen.BalancePlatform.V2.Link do
  @moduledoc """
  Provides struct and type for a Link
  """

  @type t :: %__MODULE__{
          first: Adyen.BalancePlatform.V2.Href.t() | nil,
          last: Adyen.BalancePlatform.V2.Href.t() | nil,
          next: Adyen.BalancePlatform.V2.Href.t() | nil,
          previous: Adyen.BalancePlatform.V2.Href.t() | nil,
          self: Adyen.BalancePlatform.V2.Href.t() | nil
        }

  defstruct [:first, :last, :next, :previous, :self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      first: {Adyen.BalancePlatform.V2.Href, :t},
      last: {Adyen.BalancePlatform.V2.Href, :t},
      next: {Adyen.BalancePlatform.V2.Href, :t},
      previous: {Adyen.BalancePlatform.V2.Href, :t},
      self: {Adyen.BalancePlatform.V2.Href, :t}
    ]
  end
end
