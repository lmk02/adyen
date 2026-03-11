defmodule Adyen.SessionAuthentication.V1.AuthenticationSessionResponse do
  @moduledoc """
  Provides struct and type for a AuthenticationSessionResponse
  """

  @type t :: %__MODULE__{id: String.t() | nil, token: String.t() | nil}

  defstruct [:id, :token]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string, token: :string]
  end
end
