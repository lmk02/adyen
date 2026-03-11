defmodule Adyen.Management.V3.Signature do
  @moduledoc """
  Provides struct and type for a Signature
  """

  @type t :: %__MODULE__{
          askSignatureOnScreen: boolean | nil,
          deviceName: String.t() | nil,
          deviceSlogan: String.t() | nil,
          skipSignature: boolean | nil
        }

  defstruct [:askSignatureOnScreen, :deviceName, :deviceSlogan, :skipSignature]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      askSignatureOnScreen: :boolean,
      deviceName: :string,
      deviceSlogan: :string,
      skipSignature: :boolean
    ]
  end
end
