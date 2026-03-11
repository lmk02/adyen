defmodule Adyen.BalancePlatform.V2.RegisterSCAFinalResponse do
  @moduledoc """
  Provides struct and type for a RegisterSCAFinalResponse
  """

  @type t :: %__MODULE__{success: boolean | nil}

  defstruct [:success]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [success: :boolean]
  end
end
