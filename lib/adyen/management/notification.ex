defmodule Adyen.Management.Notification do
  @moduledoc """
  Provides struct and type for a Notification
  """

  @type t :: %__MODULE__{
          category: String.t() | nil,
          details: String.t() | nil,
          enabled: boolean | nil,
          showButton: boolean | nil,
          title: String.t() | nil
        }

  defstruct [:category, :details, :enabled, :showButton, :title]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      category: {:enum, ["SaleWakeUp", "KeyPressed", ""]},
      details: :string,
      enabled: :boolean,
      showButton: :boolean,
      title: :string
    ]
  end
end
