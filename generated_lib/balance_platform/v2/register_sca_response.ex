defmodule Adyen.BalancePlatform.V2.RegisterSCAResponse do
  @moduledoc """
  Provides struct and type for a RegisterSCAResponse
  """

  @type t :: %__MODULE__{
          id: String.t() | nil,
          paymentInstrumentId: String.t() | nil,
          sdkInput: String.t() | nil,
          success: boolean | nil
        }

  defstruct [:id, :paymentInstrumentId, :sdkInput, :success]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [id: :string, paymentInstrumentId: :string, sdkInput: :string, success: :boolean]
  end
end
