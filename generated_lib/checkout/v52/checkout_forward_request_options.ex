defmodule Adyen.Checkout.V52.CheckoutForwardRequestOptions do
  @moduledoc """
  Provides struct and type for a CheckoutForwardRequestOptions
  """

  @type t :: %__MODULE__{
          accountUpdate: boolean | nil,
          dryRun: boolean | nil,
          networkToken: Adyen.Checkout.V52.CheckoutNetworkTokenOption.t() | nil,
          networkTxReferencePaths: [String.t()] | nil,
          tokenize: boolean | nil
        }

  defstruct [:accountUpdate, :dryRun, :networkToken, :networkTxReferencePaths, :tokenize]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountUpdate: :boolean,
      dryRun: :boolean,
      networkToken: {Adyen.Checkout.V52.CheckoutNetworkTokenOption, :t},
      networkTxReferencePaths: [:string],
      tokenize: :boolean
    ]
  end
end
