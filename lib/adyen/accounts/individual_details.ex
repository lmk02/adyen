defmodule Adyen.Accounts.IndividualDetails do
  @moduledoc """
  Provides struct and type for a IndividualDetails
  """

  @type t :: %__MODULE__{
          name: Adyen.Accounts.ViasName.t() | nil,
          personalData: Adyen.Accounts.ViasPersonalData.t() | nil
        }

  defstruct [:name, :personalData]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [name: {Adyen.Accounts.ViasName, :t}, personalData: {Adyen.Accounts.ViasPersonalData, :t}]
  end
end
