defmodule Adyen.BalancePlatform.BalanceWebhookSettingInfo do
  @moduledoc """
  Provides struct and type for a BalanceWebhookSettingInfo
  """

  alias Adyen.BalancePlatform.Condition
  alias Adyen.BalancePlatform.Target

  @type t :: %__MODULE__{
          conditions: [Condition.t()] | nil,
          currency: String.t(),
          status: String.t(),
          target: Target.t(),
          type: String.t()
        }

  defstruct [:conditions, :currency, :status, :target, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      conditions: [{Condition, :t}],
      currency: :string,
      status: {:enum, ["active", "inactive"]},
      target: {Target, :t},
      type: {:const, "balance"}
    ]
  end
end
