defmodule Adyen.Checkout.V72.PaymentValidationsNameResultRawResponse do
  @moduledoc """
  Provides struct and type for a PaymentValidationsNameResultRawResponse
  """

  @type t :: %__MODULE__{
          firstName: String.t() | nil,
          fullName: String.t() | nil,
          lastName: String.t() | nil,
          middleName: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:firstName, :fullName, :lastName, :middleName, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      firstName: :string,
      fullName: :string,
      lastName: :string,
      middleName: :string,
      status: :string
    ]
  end
end
