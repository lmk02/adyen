defmodule Adyen.Account.V6.AccountPayoutState do
  @moduledoc """
  Provides struct and type for a AccountPayoutState
  """

  @type t :: %__MODULE__{
          allowPayout: boolean | nil,
          disableReason: String.t() | nil,
          disabled: boolean | nil,
          notAllowedReason: String.t() | nil,
          payoutLimit: Adyen.Account.V6.Amount.t() | nil,
          tierNumber: integer | nil
        }

  defstruct [
    :allowPayout,
    :disableReason,
    :disabled,
    :notAllowedReason,
    :payoutLimit,
    :tierNumber
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      allowPayout: :boolean,
      disableReason: :string,
      disabled: :boolean,
      notAllowedReason: :string,
      payoutLimit: {Adyen.Account.V6.Amount, :t},
      tierNumber: {:integer, "int32"}
    ]
  end
end
