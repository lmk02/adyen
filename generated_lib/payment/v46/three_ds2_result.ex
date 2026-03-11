defmodule Adyen.Payment.V46.ThreeDs2Result do
  @moduledoc """
  Provides struct and type for a ThreeDs2Result
  """

  @type t :: %__MODULE__{
          authenticationValue: String.t() | nil,
          dsTransID: String.t() | nil,
          eci: String.t() | nil,
          threeDSServerTransID: String.t() | nil,
          timestamp: String.t() | nil,
          transStatus: String.t() | nil,
          transStatusReason: String.t() | nil
        }

  defstruct [
    :authenticationValue,
    :dsTransID,
    :eci,
    :threeDSServerTransID,
    :timestamp,
    :transStatus,
    :transStatusReason
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authenticationValue: :string,
      dsTransID: :string,
      eci: :string,
      threeDSServerTransID: :string,
      timestamp: :string,
      transStatus: :string,
      transStatusReason: :string
    ]
  end
end
