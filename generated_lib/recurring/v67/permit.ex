defmodule Adyen.Recurring.V67.Permit do
  @moduledoc """
  Provides struct and type for a Permit
  """

  @type t :: %__MODULE__{
          partnerId: String.t() | nil,
          profileReference: String.t() | nil,
          restriction: Adyen.Recurring.V67.PermitRestriction.t() | nil,
          resultKey: String.t() | nil,
          validTillDate: DateTime.t() | nil
        }

  defstruct [:partnerId, :profileReference, :restriction, :resultKey, :validTillDate]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      partnerId: :string,
      profileReference: :string,
      restriction: {Adyen.Recurring.V67.PermitRestriction, :t},
      resultKey: :string,
      validTillDate: {:string, "date-time"}
    ]
  end
end
