defmodule Adyen.Management.WeChatPayInfo do
  @moduledoc """
  Provides struct and type for a WeChatPayInfo
  """

  @type t :: %__MODULE__{contactPersonName: String.t(), email: String.t()}

  defstruct [:contactPersonName, :email]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [contactPersonName: :string, email: :string]
  end
end
