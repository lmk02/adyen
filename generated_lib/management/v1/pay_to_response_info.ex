defmodule Adyen.Management.V1.PayToResponseInfo do
  @moduledoc """
  Provides struct and type for a PayToResponseInfo
  """

  @type t :: %__MODULE__{merchantName: String.t() | nil, payToPurpose: String.t() | nil}

  defstruct [:merchantName, :payToPurpose]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [merchantName: :string, payToPurpose: :string]
  end
end
