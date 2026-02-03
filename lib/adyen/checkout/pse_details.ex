defmodule Adyen.Checkout.PseDetails do
  @moduledoc """
  Provides struct and type for a PseDetails
  """

  @type t :: %__MODULE__{
          bank: String.t(),
          checkoutAttemptId: String.t() | nil,
          clientType: String.t(),
          identification: String.t(),
          identificationType: String.t(),
          sdkData: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [
    :bank,
    :checkoutAttemptId,
    :clientType,
    :identification,
    :identificationType,
    :sdkData,
    :type
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      bank: :string,
      checkoutAttemptId: :string,
      clientType: :string,
      identification: :string,
      identificationType: :string,
      sdkData: :string,
      type: {:const, "pse_payulatam"}
    ]
  end
end
