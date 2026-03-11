defmodule Adyen.Management.Url do
  @moduledoc """
  Provides struct and type for a Url
  """

  @type t :: %__MODULE__{
          encrypted: boolean | nil,
          password: String.t() | nil,
          url: String.t() | nil,
          username: String.t() | nil
        }

  defstruct [:encrypted, :password, :url, :username]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [encrypted: :boolean, password: :string, url: :string, username: :string]
  end
end
