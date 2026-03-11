defmodule Adyen.BalancePlatform.V2.BalanceWebhookSettingInfoUpdate do
  @moduledoc """
  Provides struct and type for a BalanceWebhookSettingInfoUpdate
  """

  @type t :: %__MODULE__{
          conditions: [Adyen.BalancePlatform.V2.Condition.t()] | nil,
          currency: String.t() | nil,
          status: String.t() | nil,
          target: Adyen.BalancePlatform.V2.TargetUpdate.t() | nil,
          type: String.t() | nil
        }

  defstruct [:conditions, :currency, :status, :target, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      conditions: {:union, [[{Adyen.BalancePlatform.V2.Condition, :t}], :null]},
      currency: :string,
      status: {:enum, ["active", "inactive"]},
      target: {Adyen.BalancePlatform.V2.TargetUpdate, :t},
      type: {:const, "balance"}
    ]
  end
end
