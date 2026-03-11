defmodule Adyen.Management.ReprocessAndroidAppResponse do
  @moduledoc """
  Provides struct and type for a ReprocessAndroidAppResponse
  """

  @type t :: %__MODULE__{Message: String.t() | nil}

  defstruct [:Message]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [Message: :string]
  end
end
