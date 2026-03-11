defmodule Adyen.Funds.SetupBeneficiaryRequest do
  @moduledoc """
  Provides struct and type for a SetupBeneficiaryRequest
  """

  @type t :: %__MODULE__{
          destinationAccountCode: String.t(),
          merchantReference: String.t() | nil,
          sourceAccountCode: String.t()
        }

  defstruct [:destinationAccountCode, :merchantReference, :sourceAccountCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [destinationAccountCode: :string, merchantReference: :string, sourceAccountCode: :string]
  end
end
