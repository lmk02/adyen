defmodule Adyen.Checkout.V72.AcctInfo do
  @moduledoc """
  Provides struct and type for a AcctInfo
  """

  @type t :: %__MODULE__{
          chAccAgeInd: String.t() | nil,
          chAccChange: String.t() | nil,
          chAccChangeInd: String.t() | nil,
          chAccPwChange: String.t() | nil,
          chAccPwChangeInd: String.t() | nil,
          chAccString: String.t() | nil,
          nbPurchaseAccount: String.t() | nil,
          paymentAccAge: String.t() | nil,
          paymentAccInd: String.t() | nil,
          provisionAttemptsDay: String.t() | nil,
          shipAddressUsage: String.t() | nil,
          shipAddressUsageInd: String.t() | nil,
          shipNameIndicator: String.t() | nil,
          suspiciousAccActivity: String.t() | nil,
          txnActivityDay: String.t() | nil,
          txnActivityYear: String.t() | nil
        }

  defstruct [
    :chAccAgeInd,
    :chAccChange,
    :chAccChangeInd,
    :chAccPwChange,
    :chAccPwChangeInd,
    :chAccString,
    :nbPurchaseAccount,
    :paymentAccAge,
    :paymentAccInd,
    :provisionAttemptsDay,
    :shipAddressUsage,
    :shipAddressUsageInd,
    :shipNameIndicator,
    :suspiciousAccActivity,
    :txnActivityDay,
    :txnActivityYear
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      chAccAgeInd: {:enum, ["01", "02", "03", "04", "05"]},
      chAccChange: :string,
      chAccChangeInd: {:enum, ["01", "02", "03", "04"]},
      chAccPwChange: :string,
      chAccPwChangeInd: {:enum, ["01", "02", "03", "04", "05"]},
      chAccString: :string,
      nbPurchaseAccount: :string,
      paymentAccAge: :string,
      paymentAccInd: {:enum, ["01", "02", "03", "04", "05"]},
      provisionAttemptsDay: :string,
      shipAddressUsage: :string,
      shipAddressUsageInd: {:enum, ["01", "02", "03", "04"]},
      shipNameIndicator: {:enum, ["01", "02"]},
      suspiciousAccActivity: {:enum, ["01", "02"]},
      txnActivityDay: :string,
      txnActivityYear: :string
    ]
  end
end
