defmodule Adyen.TfmAPI.AssignTerminalsRequest do
  @moduledoc """
  Provides struct and type for a AssignTerminalsRequest
  """

  @type t :: %__MODULE__{
          companyAccount: String.t(),
          merchantAccount: String.t() | nil,
          merchantInventory: boolean | nil,
          store: String.t() | nil,
          terminals: [String.t()]
        }

  defstruct [:companyAccount, :merchantAccount, :merchantInventory, :store, :terminals]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      companyAccount: :string,
      merchantAccount: :string,
      merchantInventory: :boolean,
      store: :string,
      terminals: [:string]
    ]
  end
end
