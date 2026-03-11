defmodule Adyen.Payout.V68.ModifyRequest do
  @moduledoc """
  Provides struct and type for a ModifyRequest
  """

  @type t :: %__MODULE__{
          additionalData: map | nil,
          merchantAccount: String.t(),
          originalReference: String.t()
        }

  defstruct [:additionalData, :merchantAccount, :originalReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [additionalData: :map, merchantAccount: :string, originalReference: :string]
  end
end
