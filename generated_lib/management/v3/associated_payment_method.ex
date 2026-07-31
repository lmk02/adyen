defmodule Adyen.Management.V3.AssociatedPaymentMethod do
  @moduledoc """
  Provides struct and type for a AssociatedPaymentMethod
  """

  @type t :: %__MODULE__{enabled: boolean, id: String.t(), type: String.t()}

  defstruct [:enabled, :id, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [enabled: :boolean, id: :string, type: :string]
  end
end
