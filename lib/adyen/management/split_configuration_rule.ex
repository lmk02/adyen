defmodule Adyen.Management.SplitConfigurationRule do
  @moduledoc """
  Provides struct and type for a SplitConfigurationRule
  """

  @type t :: %__MODULE__{
          cardRegion: String.t() | nil,
          currency: String.t(),
          fundingSource: String.t(),
          paymentMethod: String.t(),
          ruleId: String.t() | nil,
          shopperInteraction: String.t(),
          splitLogic: Adyen.Management.SplitConfigurationLogic.t()
        }

  defstruct [
    :cardRegion,
    :currency,
    :fundingSource,
    :paymentMethod,
    :ruleId,
    :shopperInteraction,
    :splitLogic
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cardRegion: {:enum, ["international", "intraRegional", "interRegional", "domestic", "ANY"]},
      currency: :string,
      fundingSource: {:enum, ["charged", "credit", "debit", "deferred_debit", "prepaid", "ANY"]},
      paymentMethod: :string,
      ruleId: :string,
      shopperInteraction: {:enum, ["Ecommerce", "ContAuth", "Moto", "POS", "ANY"]},
      splitLogic: {Adyen.Management.SplitConfigurationLogic, :t}
    ]
  end
end
