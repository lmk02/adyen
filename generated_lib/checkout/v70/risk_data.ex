defmodule Adyen.Checkout.V70.RiskData do
  @moduledoc """
  Provides struct and type for a RiskData
  """

  @type t :: %__MODULE__{
          clientData: String.t() | nil,
          customFields: map | nil,
          fraudOffset: integer | nil,
          profileReference: String.t() | nil
        }

  defstruct [:clientData, :customFields, :fraudOffset, :profileReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      clientData: :string,
      customFields: :map,
      fraudOffset: {:integer, "int32"},
      profileReference: :string
    ]
  end
end
