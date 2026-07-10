defmodule Adyen.BalancePlatform.V1.Link do
  @moduledoc """
  Provides struct and type for a Link
  """

  @type t :: %__MODULE__{
          first: Adyen.BalancePlatform.V1.Href.t() | nil,
          last: Adyen.BalancePlatform.V1.Href.t() | nil,
          next: Adyen.BalancePlatform.V1.Href.t() | nil,
          previous: Adyen.BalancePlatform.V1.Href.t() | nil,
          self: Adyen.BalancePlatform.V1.Href.t() | nil
        }

  defstruct [:first, :last, :next, :previous, :self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      first: {Adyen.BalancePlatform.V1.Href, :t},
      last: {Adyen.BalancePlatform.V1.Href, :t},
      next: {Adyen.BalancePlatform.V1.Href, :t},
      previous: {Adyen.BalancePlatform.V1.Href, :t},
      self: {Adyen.BalancePlatform.V1.Href, :t}
    ]
  end
end
