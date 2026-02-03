defmodule Adyen.Transfers.Links do
  @moduledoc """
  Provides struct and type for a Links
  """

  alias Adyen.Transfers.Link

  @type t :: %__MODULE__{
          next: Link.t() | nil,
          prev: Link.t() | nil
        }

  defstruct [:next, :prev]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [next: {Link, :t}, prev: {Link, :t}]
  end
end
