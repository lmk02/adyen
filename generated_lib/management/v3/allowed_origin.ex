defmodule Adyen.Management.V3.AllowedOrigin do
  @moduledoc """
  Provides struct and type for a AllowedOrigin
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.V3.Links.t() | nil,
          domain: String.t(),
          id: String.t() | nil
        }

  defstruct [:_links, :domain, :id]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [_links: {Adyen.Management.V3.Links, :t}, domain: :string, id: :string]
  end
end
