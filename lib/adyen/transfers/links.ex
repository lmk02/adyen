defmodule Adyen.Transfers.Links do
  @moduledoc """
  Provides struct and type for a Links
  """

  @type t :: %__MODULE__{
          next: Adyen.Transfers.Link.t() | nil,
          prev: Adyen.Transfers.Link.t() | nil
        }

  defstruct [:next, :prev]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [next: {Adyen.Transfers.Link, :t}, prev: {Adyen.Transfers.Link, :t}]
  end
end
