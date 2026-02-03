defmodule Adyen.BalancePlatform.WebhookSetting do
  @moduledoc """
  Provides struct and type for a WebhookSetting
  """

  alias Adyen.BalancePlatform.Target

  @type t :: %__MODULE__{
          currency: String.t(),
          id: String.t(),
          status: String.t(),
          target: Target.t(),
          type: String.t()
        }

  defstruct [:currency, :id, :status, :target, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      currency: :string,
      id: :string,
      status: :string,
      target: {Target, :t},
      type: {:const, "balance"}
    ]
  end
end
