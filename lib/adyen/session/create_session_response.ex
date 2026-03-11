defmodule Adyen.Session.CreateSessionResponse do
  @moduledoc """
  Provides struct and type for a CreateSessionResponse
  """

  @type t :: %__MODULE__{
          id: String.t() | nil,
          installationId: String.t() | nil,
          merchantAccount: String.t() | nil,
          sdkData: String.t() | nil,
          store: String.t() | nil
        }

  defstruct [:id, :installationId, :merchantAccount, :sdkData, :store]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      id: :string,
      installationId: :string,
      merchantAccount: :string,
      sdkData: :string,
      store: :string
    ]
  end
end
