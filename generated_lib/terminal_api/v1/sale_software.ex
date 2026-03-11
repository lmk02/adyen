defmodule Adyen.TerminalAPI.V1.SaleSoftware do
  @moduledoc """
  Provides struct and type for a SaleSoftware
  """

  @type t :: %__MODULE__{
          ApplicationName: String.t(),
          CertificationCode: String.t(),
          ManufacturerID: String.t(),
          SoftwareVersion: String.t()
        }

  defstruct [:ApplicationName, :CertificationCode, :ManufacturerID, :SoftwareVersion]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      ApplicationName: :string,
      CertificationCode: :string,
      ManufacturerID: :string,
      SoftwareVersion: :string
    ]
  end
end
