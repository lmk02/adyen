defmodule Adyen.Session.V68.CreateSessionRequest do
  @moduledoc """
  Provides struct and type for a CreateSessionRequest
  """

  @type t :: %__MODULE__{
          merchantAccount: String.t(),
          setupToken: String.t(),
          store: String.t() | nil
        }

  defstruct [:merchantAccount, :setupToken, :store]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [merchantAccount: :string, setupToken: :string, store: :string]
  end
end
