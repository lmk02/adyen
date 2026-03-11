defmodule Adyen.Dispute.V30.DefenseReasonsRequest do
  @moduledoc """
  Provides struct and type for a DefenseReasonsRequest
  """

  @type t :: %__MODULE__{disputePspReference: String.t(), merchantAccountCode: String.t()}

  defstruct [:disputePspReference, :merchantAccountCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [disputePspReference: :string, merchantAccountCode: :string]
  end
end
