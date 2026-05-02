defmodule Adyen.Management.V1.KlarnaResponseInfo do
  @moduledoc """
  Provides struct and type for a KlarnaResponseInfo
  """

  @type t :: %__MODULE__{
          autoCapture: boolean | nil,
          disputeEmail: String.t() | nil,
          region: String.t() | nil,
          supportEmail: String.t() | nil
        }

  defstruct [:autoCapture, :disputeEmail, :region, :supportEmail]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      autoCapture: :boolean,
      disputeEmail: :string,
      region: {:enum, ["AU", "CH", "EU", "NA"]},
      supportEmail: :string
    ]
  end
end
