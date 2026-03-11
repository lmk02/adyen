defmodule Adyen.Recurring.DisablePermitRequest do
  @moduledoc """
  Provides struct and type for a DisablePermitRequest
  """

  @type t :: %__MODULE__{merchantAccount: String.t(), token: String.t()}

  defstruct [:merchantAccount, :token]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [merchantAccount: :string, token: :string]
  end
end
