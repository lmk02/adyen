defmodule Adyen.Account.V3.IndividualDetails do
  @moduledoc """
  Provides struct and type for a IndividualDetails
  """

  @type t :: %__MODULE__{
          name: Adyen.Account.V3.ViasName.t() | nil,
          personalData: Adyen.Account.V3.ViasPersonalData.t() | nil
        }

  defstruct [:name, :personalData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [name: {Adyen.Account.V3.ViasName, :t}, personalData: {Adyen.Account.V3.ViasPersonalData, :t}]
  end
end
