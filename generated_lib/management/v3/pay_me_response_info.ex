defmodule Adyen.Management.V3.PayMeResponseInfo do
  @moduledoc """
  Provides struct and type for a PayMeResponseInfo
  """

  @type t :: %__MODULE__{displayName: String.t(), logo: String.t(), supportEmail: String.t()}

  defstruct [:displayName, :logo, :supportEmail]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [displayName: :string, logo: :string, supportEmail: :string]
  end
end
