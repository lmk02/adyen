defmodule Adyen.Management.V1.EventUrl do
  @moduledoc """
  Provides struct and type for a EventUrl
  """

  @type t :: %__MODULE__{
          eventLocalUrls: [Adyen.Management.V1.Url.t()] | nil,
          eventPublicUrls: [Adyen.Management.V1.Url.t()] | nil
        }

  defstruct [:eventLocalUrls, :eventPublicUrls]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      eventLocalUrls: [{Adyen.Management.V1.Url, :t}],
      eventPublicUrls: [{Adyen.Management.V1.Url, :t}]
    ]
  end
end
