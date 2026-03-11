defmodule Adyen.LegalEntity.V1.AcceptTermsOfServiceRequest do
  @moduledoc """
  Provides struct and type for a AcceptTermsOfServiceRequest
  """

  @type t :: %__MODULE__{acceptedBy: String.t(), ipAddress: String.t() | nil}

  defstruct [:acceptedBy, :ipAddress]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [acceptedBy: :string, ipAddress: :string]
  end
end
