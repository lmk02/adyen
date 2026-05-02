defmodule Adyen.Management.V3.PayPalResponseInfo do
  @moduledoc """
  Provides struct and type for a PayPalResponseInfo
  """

  @type t :: %__MODULE__{directCapture: boolean | nil, payerId: String.t(), subject: String.t()}

  defstruct [:directCapture, :payerId, :subject]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [directCapture: :boolean, payerId: :string, subject: :string]
  end
end
