defmodule Adyen.Payment.V67.ThreeDs2ResultRequest do
  @moduledoc """
  Provides struct and type for a ThreeDs2ResultRequest
  """

  @type t :: %__MODULE__{merchantAccount: String.t(), pspReference: String.t()}

  defstruct [:merchantAccount, :pspReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [merchantAccount: :string, pspReference: :string]
  end
end
