defmodule Adyen.Hop.GetOnboardingUrlRequest do
  @moduledoc """
  Provides struct and type for a GetOnboardingUrlRequest
  """

  @type t :: %__MODULE__{
          accountHolderCode: String.t(),
          collectInformation: Adyen.Hop.CollectInformation.t() | nil,
          editMode: boolean | nil,
          mobileOAuthCallbackUrl: String.t() | nil,
          platformName: String.t() | nil,
          returnUrl: String.t() | nil,
          shopperLocale: String.t() | nil,
          showPages: Adyen.Hop.ShowPages.t() | nil
        }

  defstruct [
    :accountHolderCode,
    :collectInformation,
    :editMode,
    :mobileOAuthCallbackUrl,
    :platformName,
    :returnUrl,
    :shopperLocale,
    :showPages
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderCode: :string,
      collectInformation: {Adyen.Hop.CollectInformation, :t},
      editMode: :boolean,
      mobileOAuthCallbackUrl: :string,
      platformName: :string,
      returnUrl: :string,
      shopperLocale: :string,
      showPages: {Adyen.Hop.ShowPages, :t}
    ]
  end
end
