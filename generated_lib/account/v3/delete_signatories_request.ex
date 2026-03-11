defmodule Adyen.Account.V3.DeleteSignatoriesRequest do
  @moduledoc """
  Provides struct and type for a DeleteSignatoriesRequest
  """

  @type t :: %__MODULE__{accountHolderCode: String.t(), signatoryCodes: [String.t()]}

  defstruct [:accountHolderCode, :signatoryCodes]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderCode: :string, signatoryCodes: [:string]]
  end
end
