defmodule Adyen.Management.V3.UpdateSplitConfigurationRequest do
  @moduledoc """
  Provides struct and type for a UpdateSplitConfigurationRequest
  """

  @type t :: %__MODULE__{description: String.t()}

  defstruct [:description]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [description: :string]
  end
end
