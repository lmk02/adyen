defmodule Adyen.Account.V5.IndividualDetails do
  @moduledoc """
  Provides struct and type for a IndividualDetails
  """

  @type t :: %__MODULE__{
          name: Adyen.Account.V5.ViasName.t() | nil,
          personalData: Adyen.Account.V5.ViasPersonalData.t() | nil
        }

  defstruct [:name, :personalData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [name: {Adyen.Account.V5.ViasName, :t}, personalData: {Adyen.Account.V5.ViasPersonalData, :t}]
  end
end
