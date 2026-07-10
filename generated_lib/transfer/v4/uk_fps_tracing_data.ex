defmodule Adyen.Transfer.V4.UKFpsTracingData do
  @moduledoc """
  Provides struct and type for a UKFpsTracingData
  """

  @type t :: %__MODULE__{fpid: String.t(), type: String.t()}

  defstruct [:fpid, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [fpid: :string, type: {:const, "ukFps"}]
  end
end
