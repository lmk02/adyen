defmodule Adyen.Funds.SetupBeneficiaryResponse do
  @moduledoc """
  Provides struct and type for a SetupBeneficiaryResponse
  """

  @type t :: %__MODULE__{
          invalidFields: [Adyen.Funds.ErrorFieldType.t()] | nil,
          pspReference: String.t() | nil,
          resultCode: String.t() | nil
        }

  defstruct [:invalidFields, :pspReference, :resultCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      invalidFields: [{Adyen.Funds.ErrorFieldType, :t}],
      pspReference: :string,
      resultCode: :string
    ]
  end
end
