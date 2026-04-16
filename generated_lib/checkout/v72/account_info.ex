defmodule Adyen.Checkout.V72.AccountInfo do
  @moduledoc """
  Provides struct and type for a AccountInfo
  """

  @type t :: %__MODULE__{
          accountAgeIndicator: String.t() | nil,
          accountChangeDate: DateTime.t() | nil,
          accountChangeIndicator: String.t() | nil,
          accountCreationDate: DateTime.t() | nil,
          accountType: String.t() | nil,
          addCardAttemptsDay: integer | nil,
          deliveryAddressUsageDate: DateTime.t() | nil,
          deliveryAddressUsageIndicator: String.t() | nil,
          homePhone: String.t() | nil,
          mobilePhone: String.t() | nil,
          passwordChangeDate: DateTime.t() | nil,
          passwordChangeIndicator: String.t() | nil,
          pastTransactionsDay: integer | nil,
          pastTransactionsYear: integer | nil,
          paymentAccountAge: DateTime.t() | nil,
          paymentAccountIndicator: String.t() | nil,
          purchasesLast6Months: integer | nil,
          suspiciousActivity: boolean | nil,
          workPhone: String.t() | nil
        }

  defstruct [
    :accountAgeIndicator,
    :accountChangeDate,
    :accountChangeIndicator,
    :accountCreationDate,
    :accountType,
    :addCardAttemptsDay,
    :deliveryAddressUsageDate,
    :deliveryAddressUsageIndicator,
    :homePhone,
    :mobilePhone,
    :passwordChangeDate,
    :passwordChangeIndicator,
    :pastTransactionsDay,
    :pastTransactionsYear,
    :paymentAccountAge,
    :paymentAccountIndicator,
    :purchasesLast6Months,
    :suspiciousActivity,
    :workPhone
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountAgeIndicator:
        {:enum,
         [
           "notApplicable",
           "thisTransaction",
           "lessThan30Days",
           "from30To60Days",
           "moreThan60Days"
         ]},
      accountChangeDate: {:string, "date-time"},
      accountChangeIndicator:
        {:enum, ["thisTransaction", "lessThan30Days", "from30To60Days", "moreThan60Days"]},
      accountCreationDate: {:string, "date-time"},
      accountType: {:enum, ["notApplicable", "credit", "debit"]},
      addCardAttemptsDay: {:integer, "int32"},
      deliveryAddressUsageDate: {:string, "date-time"},
      deliveryAddressUsageIndicator:
        {:enum, ["thisTransaction", "lessThan30Days", "from30To60Days", "moreThan60Days"]},
      homePhone: :string,
      mobilePhone: :string,
      passwordChangeDate: {:string, "date-time"},
      passwordChangeIndicator:
        {:enum,
         [
           "notApplicable",
           "thisTransaction",
           "lessThan30Days",
           "from30To60Days",
           "moreThan60Days"
         ]},
      pastTransactionsDay: {:integer, "int32"},
      pastTransactionsYear: {:integer, "int32"},
      paymentAccountAge: {:string, "date-time"},
      paymentAccountIndicator:
        {:enum,
         [
           "notApplicable",
           "thisTransaction",
           "lessThan30Days",
           "from30To60Days",
           "moreThan60Days"
         ]},
      purchasesLast6Months: {:integer, "int32"},
      suspiciousActivity: :boolean,
      workPhone: :string
    ]
  end
end
