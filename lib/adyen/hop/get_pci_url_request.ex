defmodule Adyen.Hop.GetPciUrlRequest do
  @moduledoc """
  Provides struct and type for a GetPciUrlRequest
  """

  @type t :: %__MODULE__{accountHolderCode: String.t(), returnUrl: String.t() | nil}

  defstruct [:accountHolderCode, :returnUrl]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderCode: :string, returnUrl: :string]
  end
end
