defmodule Adyen.Checkout.CellulantDetails do
  @moduledoc """
  Provides struct and type for a CellulantDetails
  """

  @type t :: %__MODULE__{
          checkoutAttemptId: String.t() | nil,
          issuer: String.t() | nil,
          sdkData: String.t() | nil,
          type: String.t() | nil
        }

  defstruct [:checkoutAttemptId, :issuer, :sdkData, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [checkoutAttemptId: :string, issuer: :string, sdkData: :string, type: {:const, "cellulant"}]
  end
end
