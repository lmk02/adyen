defmodule Adyen.BalancePlatform.V1.PhoneNumber do
  @moduledoc """
  Provides struct and type for a PhoneNumber
  """

  @type t :: %__MODULE__{
          phoneCountryCode: String.t() | nil,
          phoneNumber: String.t() | nil,
          phoneType: String.t() | nil
        }

  defstruct [:phoneCountryCode, :phoneNumber, :phoneType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      phoneCountryCode: :string,
      phoneNumber: :string,
      phoneType: {:enum, ["Fax", "Landline", "Mobile", "SIP"]}
    ]
  end
end
