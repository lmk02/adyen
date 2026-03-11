defmodule Adyen.BalancePlatform.V2.BalanceWebhookSettingInfo do
  @moduledoc """
  Provides struct and type for a BalanceWebhookSettingInfo
  """

  @type t :: %__MODULE__{
          conditions: [Adyen.BalancePlatform.V2.Condition.t()] | nil,
          currency: String.t(),
          status: String.t(),
          target: Adyen.BalancePlatform.V2.Target.t(),
          type: String.t()
        }

  defstruct [:conditions, :currency, :status, :target, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      conditions: [{Adyen.BalancePlatform.V2.Condition, :t}],
      currency: :string,
      status: {:enum, ["active", "inactive"]},
      target: {Adyen.BalancePlatform.V2.Target, :t},
      type: {:const, "balance"}
    ]
  end
end
