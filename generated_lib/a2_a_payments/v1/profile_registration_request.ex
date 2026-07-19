defmodule Adyen.A2APayments.V1.ProfileRegistrationRequest do
  @moduledoc """
  Provides struct and type for a ProfileRegistrationRequest
  """

  @type t :: %__MODULE__{accountHolderId: String.t(), paymentInstrumentIds: [String.t()]}

  defstruct [:accountHolderId, :paymentInstrumentIds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderId: :string, paymentInstrumentIds: [:string]]
  end
end
