defmodule Adyen.TfmAPI.V1.FindTerminalResponse do
  @moduledoc """
  Provides struct and type for a FindTerminalResponse
  """

  @type t :: %__MODULE__{
          companyAccount: String.t(),
          merchantAccount: String.t() | nil,
          merchantInventory: boolean | nil,
          store: String.t() | nil,
          terminal: String.t()
        }

  defstruct [:companyAccount, :merchantAccount, :merchantInventory, :store, :terminal]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      companyAccount: :string,
      merchantAccount: :string,
      merchantInventory: :boolean,
      store: :string,
      terminal: :string
    ]
  end
end
