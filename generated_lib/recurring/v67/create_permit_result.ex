defmodule Adyen.Recurring.V67.CreatePermitResult do
  @moduledoc """
  Provides struct and type for a CreatePermitResult
  """

  @type t :: %__MODULE__{
          permitResultList: [Adyen.Recurring.V67.PermitResult.t()] | nil,
          pspReference: String.t() | nil
        }

  defstruct [:permitResultList, :pspReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [permitResultList: [{Adyen.Recurring.V67.PermitResult, :t}], pspReference: :string]
  end
end
