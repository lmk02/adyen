defmodule Adyen.Management.V1.AmexResponseInfo do
  @moduledoc """
  Provides struct and type for a AmexResponseInfo
  """

  @type t :: %__MODULE__{
          midNumber: String.t() | nil,
          reuseMidNumber: boolean | nil,
          serviceLevel: String.t() | nil
        }

  defstruct [:midNumber, :reuseMidNumber, :serviceLevel]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [midNumber: :string, reuseMidNumber: :boolean, serviceLevel: :string]
  end
end
