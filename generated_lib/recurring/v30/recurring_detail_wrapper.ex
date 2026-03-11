defmodule Adyen.Recurring.V30.RecurringDetailWrapper do
  @moduledoc """
  Provides struct and type for a RecurringDetailWrapper
  """

  @type t :: %__MODULE__{RecurringDetail: Adyen.Recurring.V30.RecurringDetail.t() | nil}

  defstruct [:RecurringDetail]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [RecurringDetail: {Adyen.Recurring.V30.RecurringDetail, :t}]
  end
end
