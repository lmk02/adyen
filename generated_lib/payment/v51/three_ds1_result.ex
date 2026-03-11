defmodule Adyen.Payment.V51.ThreeDs1Result do
  @moduledoc """
  Provides struct and type for a ThreeDs1Result
  """

  @type t :: %__MODULE__{
          cavv: String.t() | nil,
          cavvAlgorithm: String.t() | nil,
          eci: String.t() | nil,
          threeDAuthenticatedResponse: String.t() | nil,
          threeDOfferedResponse: String.t() | nil,
          xid: String.t() | nil
        }

  defstruct [
    :cavv,
    :cavvAlgorithm,
    :eci,
    :threeDAuthenticatedResponse,
    :threeDOfferedResponse,
    :xid
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      cavv: :string,
      cavvAlgorithm: :string,
      eci: :string,
      threeDAuthenticatedResponse: :string,
      threeDOfferedResponse: :string,
      xid: :string
    ]
  end
end
