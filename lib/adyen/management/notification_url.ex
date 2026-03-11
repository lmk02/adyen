defmodule Adyen.Management.NotificationUrl do
  @moduledoc """
  Provides struct and type for a NotificationUrl
  """

  @type t :: %__MODULE__{
          localUrls: [Adyen.Management.Url.t()] | nil,
          publicUrls: [Adyen.Management.Url.t()] | nil
        }

  defstruct [:localUrls, :publicUrls]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [localUrls: [{Adyen.Management.Url, :t}], publicUrls: [{Adyen.Management.Url, :t}]]
  end
end
