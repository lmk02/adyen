defmodule Adyen.Management.V1.PaymentMethodWrapper do
  @moduledoc """
  Provides struct and type for a PaymentMethodWrapper
  """

  @type t :: %__MODULE__{PaymentMethod: Adyen.Management.V1.PaymentMethod.t() | nil}

  defstruct [:PaymentMethod]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [PaymentMethod: {Adyen.Management.V1.PaymentMethod, :t}]
  end
end
