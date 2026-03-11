defmodule Adyen.Account.V3.UltimateParentCompanyBusinessDetails do
  @moduledoc """
  Provides struct and type for a UltimateParentCompanyBusinessDetails
  """

  @type t :: %__MODULE__{
          legalBusinessName: String.t() | nil,
          registrationNumber: String.t() | nil,
          stockExchange: String.t() | nil,
          stockNumber: String.t() | nil,
          stockTicker: String.t() | nil
        }

  defstruct [:legalBusinessName, :registrationNumber, :stockExchange, :stockNumber, :stockTicker]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      legalBusinessName: :string,
      registrationNumber: :string,
      stockExchange: :string,
      stockNumber: :string,
      stockTicker: :string
    ]
  end
end
