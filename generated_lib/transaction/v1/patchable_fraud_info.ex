defmodule Adyen.Transaction.V1.PatchableFraudInfo do
  @moduledoc """
  Provides struct and type for a PatchableFraudInfo
  """

  @type t :: %__MODULE__{
          cardDoesNotBelongToCardholder: boolean | nil,
          cardWasCounterfeited: boolean | nil,
          descriptionOfIssue: String.t() | nil,
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
      reportOnly: {:union, [:boolean, :null]}
    ]
  end
end
