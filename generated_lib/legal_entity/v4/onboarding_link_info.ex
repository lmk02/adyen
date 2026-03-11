defmodule Adyen.LegalEntity.V4.OnboardingLinkInfo do
  @moduledoc """
  Provides struct and type for a OnboardingLinkInfo
  """

  @type t :: %__MODULE__{
          locale: String.t() | nil,
          redirectUrl: String.t() | nil,
          settings: Adyen.LegalEntity.V4.OnboardingLinkSettings.t() | nil,
          themeId: String.t() | nil
        }

  defstruct [:locale, :redirectUrl, :settings, :themeId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      locale: :string,
      redirectUrl: :string,
      settings: {Adyen.LegalEntity.V4.OnboardingLinkSettings, :t},
      themeId: :string
    ]
  end
end
