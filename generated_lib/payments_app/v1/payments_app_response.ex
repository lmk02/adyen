defmodule Adyen.PaymentsApp.V1.PaymentsAppResponse do
  @moduledoc """
  Provides struct and type for a PaymentsAppResponse
  """

  @type t :: %__MODULE__{paymentsApps: [Adyen.PaymentsApp.V1.PaymentsAppDto.t()]}

  defstruct [:paymentsApps]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [paymentsApps: [{Adyen.PaymentsApp.V1.PaymentsAppDto, :t}]]
  end
end
