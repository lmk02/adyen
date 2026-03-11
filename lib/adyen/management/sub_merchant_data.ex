defmodule Adyen.Management.SubMerchantData do
  @moduledoc """
  Provides struct and type for a SubMerchantData
  """

  @type t :: %__MODULE__{email: String.t(), id: String.t(), mcc: String.t(), name: String.t()}

  defstruct [:email, :id, :mcc, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [email: :string, id: :string, mcc: :string, name: :string]
  end
end
