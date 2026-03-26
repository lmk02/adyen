defmodule Adyen.Checkout.V51.PixPayByBankRiskSignals do
  @moduledoc """
  Provides struct and type for a PixPayByBankRiskSignals
  """

  @type t :: %__MODULE__{
          confidenceScore: Adyen.Checkout.V51.ConfidenceScore.t() | nil,
          elapsedTimeSinceBoot: integer | nil,
          isRootedDevice: boolean | nil,
          language: String.t() | nil,
          osVersion: String.t() | nil,
          screenBrightness: integer | nil,
          screenDimensions: Adyen.Checkout.V51.ScreenDimensions.t() | nil,
          userTimeZoneOffset: integer | nil
        }

  defstruct [
    :confidenceScore,
    :elapsedTimeSinceBoot,
    :isRootedDevice,
    :language,
    :osVersion,
    :screenBrightness,
    :screenDimensions,
    :userTimeZoneOffset
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      confidenceScore: {Adyen.Checkout.V51.ConfidenceScore, :t},
      elapsedTimeSinceBoot: {:integer, "int64"},
      isRootedDevice: :boolean,
      language: :string,
      osVersion: :string,
      screenBrightness: {:integer, "int32"},
      screenDimensions: {Adyen.Checkout.V51.ScreenDimensions, :t},
      userTimeZoneOffset: {:integer, "int32"}
    ]
  end
end
