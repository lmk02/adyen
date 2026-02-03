defmodule Adyen.BalancePlatform.BankAccountDetails do
  @moduledoc """
  Provides struct and type for a BankAccountDetails
  """

  @type t :: %__MODULE__{
          accountNumber: String.t() | nil,
          accountType: String.t() | nil,
          branchNumber: String.t() | nil,
          formFactor: String.t() | nil,
          iban: String.t() | nil,
          routingNumber: String.t() | nil,
          sortCode: String.t() | nil,
          type: String.t()
        }

  defstruct [
    :accountNumber,
    :accountType,
    :branchNumber,
    :formFactor,
    :iban,
    :routingNumber,
    :sortCode,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountNumber: :string,
      accountType: :string,
      branchNumber: :string,
      formFactor: :string,
      iban: :string,
      routingNumber: :string,
      sortCode: :string,
      type: :string
    ]
  end
end
