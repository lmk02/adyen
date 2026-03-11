defmodule Adyen.Transfer.V4.RoutingDetails do
  @moduledoc """
  Provides struct and type for a RoutingDetails
  """

  @type t :: %__MODULE__{
          detail: String.t() | nil,
          errorCode: String.t() | nil,
          priority: String.t() | nil,
          title: String.t() | nil
        }

  defstruct [:detail, :errorCode, :priority, :title]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      detail: :string,
      errorCode: :string,
      priority: {:enum, ["crossBorder", "fast", "instant", "internal", "regular", "wire"]},
      title: :string
    ]
  end
end
