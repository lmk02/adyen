defmodule Adyen.Payment.V64.DeviceRenderOptions do
  @moduledoc """
  Provides struct and type for a DeviceRenderOptions
  """

  @type t :: %__MODULE__{sdkInterface: String.t() | nil, sdkUiType: [String.t()] | nil}

  defstruct [:sdkInterface, :sdkUiType]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      sdkInterface: {:enum, ["native", "html", "both"]},
      sdkUiType: [enum: ["multiSelect", "otherHtml", "outOfBand", "singleSelect", "text"]]
    ]
  end
end
