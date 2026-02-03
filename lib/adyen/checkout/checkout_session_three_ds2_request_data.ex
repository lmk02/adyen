defmodule Adyen.Checkout.CheckoutSessionThreeDs2RequestData do
  @moduledoc """
  Provides struct and type for a CheckoutSessionThreeDs2RequestData
  """

  alias Adyen.Checkout.Phone

  @type t :: %__MODULE__{
          homePhone: Phone.t() | nil,
          mobilePhone: Phone.t() | nil,
          threeDSRequestorChallengeInd: String.t() | nil,
          workPhone: Phone.t() | nil
        }

  defstruct [:homePhone, :mobilePhone, :threeDSRequestorChallengeInd, :workPhone]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      homePhone: {Phone, :t},
      mobilePhone: {Phone, :t},
      threeDSRequestorChallengeInd: {:enum, ["01", "02", "03", "04", "05", "06"]},
      workPhone: {Phone, :t}
    ]
  end
end
