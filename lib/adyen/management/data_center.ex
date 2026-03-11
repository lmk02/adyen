defmodule Adyen.Management.DataCenter do
  @moduledoc """
  Provides struct and type for a DataCenter
  """

  @type t :: %__MODULE__{livePrefix: String.t() | nil, name: String.t() | nil}

  defstruct [:livePrefix, :name]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [livePrefix: :string, name: :string]
  end
end
