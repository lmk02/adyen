defmodule Adyen.Management.V1.MerchantLinks do
  @moduledoc """
  Provides struct and type for a MerchantLinks
  """

  @type t :: %__MODULE__{
          apiCredentials: Adyen.Management.V1.LinksElement.t() | nil,
          self: Adyen.Management.V1.LinksElement.t(),
          users: Adyen.Management.V1.LinksElement.t() | nil,
          webhooks: Adyen.Management.V1.LinksElement.t() | nil
        }

  defstruct [:apiCredentials, :self, :users, :webhooks]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      apiCredentials: {Adyen.Management.V1.LinksElement, :t},
      self: {Adyen.Management.V1.LinksElement, :t},
      users: {Adyen.Management.V1.LinksElement, :t},
      webhooks: {Adyen.Management.V1.LinksElement, :t}
    ]
  end
end
