defmodule Adyen.Checkout.V72.CheckoutSessionThreeDs2RequestData do
  @moduledoc """
  Provides struct and type for a CheckoutSessionThreeDs2RequestData
  """

  @type t :: %__MODULE__{
          homePhone: Adyen.Checkout.V72.Phone.t() | nil,
          mobilePhone: Adyen.Checkout.V72.Phone.t() | nil,
          threeDSRequestorChallengeInd: String.t() | nil,
          workPhone: Adyen.Checkout.V72.Phone.t() | nil
        }

  defstruct [:homePhone, :mobilePhone, :threeDSRequestorChallengeInd, :workPhone]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      homePhone: {Adyen.Checkout.V72.Phone, :t},
      mobilePhone: {Adyen.Checkout.V72.Phone, :t},
      threeDSRequestorChallengeInd: {:enum, ["01", "02", "03", "04", "05", "06"]},
      workPhone: {Adyen.Checkout.V72.Phone, :t}
    ]
  end
end
