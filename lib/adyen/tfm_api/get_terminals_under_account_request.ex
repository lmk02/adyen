defmodule Adyen.TfmAPI.GetTerminalsUnderAccountRequest do
  @moduledoc """
  Provides struct and type for a GetTerminalsUnderAccountRequest
  """

  @type t :: %__MODULE__{
          companyAccount: String.t(),
          merchantAccount: String.t() | nil,
          store: String.t() | nil
        }

  defstruct [:companyAccount, :merchantAccount, :store]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [companyAccount: :string, merchantAccount: :string, store: :string]
  end
end
