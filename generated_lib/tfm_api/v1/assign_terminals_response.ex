defmodule Adyen.TfmAPI.V1.AssignTerminalsResponse do
  @moduledoc """
  Provides struct and type for a AssignTerminalsResponse
  """

  @type t :: %__MODULE__{results: map}

  defstruct [:results]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [results: :map]
  end
end
