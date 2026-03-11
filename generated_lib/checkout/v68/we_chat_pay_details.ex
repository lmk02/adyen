defmodule Adyen.Checkout.V68.WeChatPayDetails do
  @moduledoc """
  Provides struct and type for a WeChatPayDetails
  """

  @type t :: %__MODULE__{checkoutAttemptId: String.t() | nil, type: String.t() | nil}

  defstruct [:checkoutAttemptId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checkoutAttemptId: :string, type: {:enum, ["wechatpay", "wechatpay_pos"]}]
  end
end
