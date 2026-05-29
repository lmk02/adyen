defmodule Adyen.A2APayments.V1.IdealAuthLinkRequest do
  @moduledoc """
  Provides struct and type for a IdealAuthLinkRequest
  """

  @type t :: %__MODULE__{accountHolderId: String.t()}

  defstruct [:accountHolderId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderId: :string]
  end
end
