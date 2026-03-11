defmodule Adyen.Management.V1.Passcodes do
  @moduledoc """
  Provides struct and type for a Passcodes
  """

  @type t :: %__MODULE__{
          adminMenuPin: String.t() | nil,
          refundPin: String.t() | nil,
          screenLockPin: String.t() | nil,
          txMenuPin: String.t() | nil
        }

  defstruct [:adminMenuPin, :refundPin, :screenLockPin, :txMenuPin]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [adminMenuPin: :string, refundPin: :string, screenLockPin: :string, txMenuPin: :string]
  end
end
