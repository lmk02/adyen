defmodule Adyen.Checkout.WeChatPayMiniProgramDetails do
  @moduledoc """
  Provides struct and type for a WeChatPayMiniProgramDetails
  """

  @type t :: %__MODULE__{
          appId: String.t() | nil,
          checkoutAttemptId: String.t() | nil,
          openid: String.t() | nil,
          recurringDetailReference: String.t() | nil,
          sdkData: String.t() | nil,
          storedPaymentMethodId: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :appId,
    :checkoutAttemptId,
    :openid,
    :recurringDetailReference,
    :sdkData,
    :storedPaymentMethodId,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      appId: :string,
      checkoutAttemptId: :string,
      openid: :string,
      recurringDetailReference: :string,
      sdkData: :string,
      storedPaymentMethodId: :string,
      type: {:const, "wechatpayMiniProgram"}
    ]
  end
end
