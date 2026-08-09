defmodule Adyen.A2APayments.V1.IdealAuthenticateRequest do
  @moduledoc """
  Provides struct and type for a IdealAuthenticateRequest
  """

  @type t :: %__MODULE__{accountHolderId: String.t(), payload: String.t()}

  defstruct [:accountHolderId, :payload]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderId: :string, payload: :string]
  end
end
