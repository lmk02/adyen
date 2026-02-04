defmodule Adyen.BalancePlatform.Link do
  @moduledoc """
  Provides struct and type for a Link
  """

  @type t :: %__MODULE__{
          first: Adyen.BalancePlatform.Href.t() | nil,
          last: Adyen.BalancePlatform.Href.t() | nil,
          next: Adyen.BalancePlatform.Href.t() | nil,
          previous: Adyen.BalancePlatform.Href.t() | nil,
          self: Adyen.BalancePlatform.Href.t() | nil
        }

  defstruct [:first, :last, :next, :previous, :self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      first: {Adyen.BalancePlatform.Href, :t},
      last: {Adyen.BalancePlatform.Href, :t},
      next: {Adyen.BalancePlatform.Href, :t},
      previous: {Adyen.BalancePlatform.Href, :t},
      self: {Adyen.BalancePlatform.Href, :t}
    ]
  end
end
