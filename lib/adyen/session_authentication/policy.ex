defmodule Adyen.SessionAuthentication.Policy do
  @moduledoc """
  Provides struct and type for a Policy
  """

  @type t :: %__MODULE__{
          resources: [Adyen.SessionAuthentication.Resource.t()] | nil,
          roles: [String.t()] | nil
        }

  defstruct [:resources, :roles]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [resources: [{Adyen.SessionAuthentication.Resource, :t}], roles: [:string]]
  end
end
