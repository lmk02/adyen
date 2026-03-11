defmodule Adyen.Account.V3.BankAccountDetailWrapper do
  @moduledoc """
  Provides struct and type for a BankAccountDetailWrapper
  """

  @type t :: %__MODULE__{BankAccountDetail: Adyen.Account.V3.BankAccountDetail.t() | nil}

  defstruct [:BankAccountDetail]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [BankAccountDetail: {Adyen.Account.V3.BankAccountDetail, :t}]
  end
end
