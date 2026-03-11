defmodule Adyen.Management.KlarnaInfo do
  @moduledoc """
  Provides struct and type for a KlarnaInfo
  """

  @type t :: %__MODULE__{
          autoCapture: boolean | nil,
          disputeEmail: String.t(),
          region: String.t(),
          supportEmail: String.t()
        }

  defstruct [:autoCapture, :disputeEmail, :region, :supportEmail]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      autoCapture: :boolean,
      disputeEmail: :string,
      region: {:enum, ["NA", "EU", "CH", "AU"]},
      supportEmail: :string
    ]
  end
end
