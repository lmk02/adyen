defmodule Adyen.Management.V3.NotificationUrl do
  @moduledoc """
  Provides struct and type for a NotificationUrl
  """

  @type t :: %__MODULE__{
          localUrls: [Adyen.Management.V3.Url.t()] | nil,
          publicUrls: [Adyen.Management.V3.Url.t()] | nil
        }

  defstruct [:localUrls, :publicUrls]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [localUrls: [{Adyen.Management.V3.Url, :t}], publicUrls: [{Adyen.Management.V3.Url, :t}]]
  end
end
