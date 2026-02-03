defmodule Adyen.BalancePlatform.Link do
  @moduledoc """
  Provides struct and type for a Link
  """

  alias Adyen.BalancePlatform.Href

  @type t :: %__MODULE__{
          first: Href.t() | nil,
          last: Href.t() | nil,
          next: Href.t() | nil,
          previous: Href.t() | nil,
          self: Href.t() | nil
        }

  defstruct [:first, :last, :next, :previous, :self]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      first: {Href, :t},
      last: {Href, :t},
      next: {Href, :t},
      previous: {Href, :t},
      self: {Href, :t}
    ]
  end
end
