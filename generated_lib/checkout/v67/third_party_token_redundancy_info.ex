defmodule Adyen.Checkout.V67.ThirdPartyTokenRedundancyInfo do
  @moduledoc """
  Provides struct and type for a ThirdPartyTokenRedundancyInfo
  """

  @type t :: %__MODULE__{requestParameters: map | nil, requestTemplateCode: String.t()}

  defstruct [:requestParameters, :requestTemplateCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [requestParameters: :map, requestTemplateCode: :string]
  end
end
