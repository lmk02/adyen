defmodule Adyen.Checkout.V52.BrowserInfo do
  @moduledoc """
  Provides struct and type for a BrowserInfo
  """

  @type t :: %__MODULE__{
          acceptHeader: String.t(),
          colorDepth: integer,
          javaEnabled: boolean,
          javaScriptEnabled: boolean | nil,
          language: String.t(),
          screenHeight: integer,
          screenWidth: integer,
          timeZoneOffset: integer,
          userAgent: String.t()
        }

  defstruct [
    :acceptHeader,
    :colorDepth,
    :javaEnabled,
    :javaScriptEnabled,
    :language,
    :screenHeight,
    :screenWidth,
    :timeZoneOffset,
    :userAgent
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      acceptHeader: :string,
      colorDepth: {:integer, "int32"},
      javaEnabled: :boolean,
      javaScriptEnabled: :boolean,
      language: :string,
      screenHeight: {:integer, "int32"},
      screenWidth: {:integer, "int32"},
      timeZoneOffset: {:integer, "int32"},
      userAgent: :string
    ]
  end
end
