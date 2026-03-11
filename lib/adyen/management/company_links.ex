defmodule Adyen.Management.CompanyLinks do
  @moduledoc """
  Provides struct and type for a CompanyLinks
  """

  @type t :: %__MODULE__{
          apiCredentials: Adyen.Management.LinksElement.t() | nil,
          self: Adyen.Management.LinksElement.t(),
          users: Adyen.Management.LinksElement.t() | nil,
          webhooks: Adyen.Management.LinksElement.t() | nil
        }

  defstruct [:apiCredentials, :self, :users, :webhooks]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      apiCredentials: {Adyen.Management.LinksElement, :t},
      self: {Adyen.Management.LinksElement, :t},
      users: {Adyen.Management.LinksElement, :t},
      webhooks: {Adyen.Management.LinksElement, :t}
    ]
  end
end
