defmodule Adyen.Transaction.V3.FraudInfo do
  @moduledoc """
  Provides struct and type for a FraudInfo
  """

  @type t :: %__MODULE__{
          cardDoesNotBelongToCardholder: boolean,
          cardWasCounterfeited: boolean,
          descriptionOfIssue: String.t(),
          reportOnly: boolean | nil
        }

  defstruct [
    :cardDoesNotBelongToCardholder,
    :cardWasCounterfeited,
    :descriptionOfIssue,
    :reportOnly
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardDoesNotBelongToCardholder: :boolean,
      cardWasCounterfeited: :boolean,
      descriptionOfIssue: :string,
      reportOnly: :boolean
    ]
  end
end
