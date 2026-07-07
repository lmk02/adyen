defmodule Adyen.A2APayments.V1.Links do
  @moduledoc """
  Provides struct and type for a Links
  """

  @type t :: %__MODULE__{
          cancel: Adyen.A2APayments.V1.Href.t() | nil,
          success: Adyen.A2APayments.V1.Href.t() | nil
        }

  defstruct [:cancel, :success]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [cancel: {Adyen.A2APayments.V1.Href, :t}, success: {Adyen.A2APayments.V1.Href, :t}]
  end
end
