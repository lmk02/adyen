defmodule Adyen.Management.EventUrl do
  @moduledoc """
  Provides struct and type for a EventUrl
  """

  @type t :: %__MODULE__{
          eventLocalUrls: [Adyen.Management.Url.t()] | nil,
          eventPublicUrls: [Adyen.Management.Url.t()] | nil
        }

  defstruct [:eventLocalUrls, :eventPublicUrls]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [eventLocalUrls: [{Adyen.Management.Url, :t}], eventPublicUrls: [{Adyen.Management.Url, :t}]]
  end
end
