defmodule Adyen.Management.V1.TransactionDescriptionResponseInfo do
  @moduledoc """
  Provides struct and type for a TransactionDescriptionResponseInfo
  """

  @type t :: %__MODULE__{doingBusinessAsName: String.t() | nil, type: String.t() | nil}

  defstruct [:doingBusinessAsName, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [doingBusinessAsName: :string, type: {:enum, ["append", "dynamic", "fixed"]}]
  end
end
