defmodule Adyen.Management.V1.Nonprofit do
  @moduledoc """
  Provides struct and type for a Nonprofit
  """

  @type t :: %__MODULE__{
          causes: [Adyen.Management.V1.NonprofitCause.t()],
          description: String.t(),
          goals: [String.t()],
          id: String.t() | nil,
          locales: [String.t()],
          logoUrl: String.t(),
          name: String.t(),
          regions: [String.t()],
          termsAndConditionsUrl: String.t(),
          website: String.t()
        }

  defstruct [
    :causes,
    :description,
    :goals,
    :id,
    :locales,
    :logoUrl,
    :name,
    :regions,
    :termsAndConditionsUrl,
    :website
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      causes: [{Adyen.Management.V1.NonprofitCause, :t}],
      description: :string,
      goals: [:string],
      id: :string,
      locales: [:string],
      logoUrl: :string,
      name: :string,
      regions: [:string],
      termsAndConditionsUrl: :string,
      website: :string
    ]
  end
end
