defmodule Adyen.Payment.V64.ThreeDs2Result do
  @moduledoc """
  Provides struct and type for a ThreeDs2Result
  """

  @type t :: %__MODULE__{
          authenticationValue: String.t() | nil,
          cavvAlgorithm: String.t() | nil,
          dsTransID: String.t() | nil,
          eci: String.t() | nil,
          messageVersion: String.t() | nil,
          threeDSServerTransID: String.t() | nil,
          timestamp: String.t() | nil,
          transStatus: String.t() | nil,
          transStatusReason: String.t() | nil,
          whiteListStatus: String.t() | nil
        }

  defstruct [
    :authenticationValue,
    :cavvAlgorithm,
    :dsTransID,
    :eci,
    :messageVersion,
    :threeDSServerTransID,
    :timestamp,
    :transStatus,
    :transStatusReason,
    :whiteListStatus
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authenticationValue: :string,
      cavvAlgorithm: :string,
      dsTransID: :string,
      eci: :string,
      messageVersion: :string,
      threeDSServerTransID: :string,
      timestamp: :string,
      transStatus: :string,
      transStatusReason: :string,
      whiteListStatus: :string
    ]
  end
end
