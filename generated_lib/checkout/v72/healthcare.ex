defmodule Adyen.Checkout.V72.Healthcare do
  @moduledoc """
  Provides struct and type for a Healthcare
  """

  @type t :: %__MODULE__{
          dentalValue: integer | nil,
          otherMedicalValue: integer | nil,
          prescriptionValue: integer | nil,
          totalHealthcareValue: integer,
          visionPrescriptionValue: integer | nil
        }

  defstruct [
    :dentalValue,
    :otherMedicalValue,
    :prescriptionValue,
    :totalHealthcareValue,
    :visionPrescriptionValue
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      dentalValue: {:integer, "int64"},
      otherMedicalValue: {:integer, "int64"},
      prescriptionValue: {:integer, "int64"},
      totalHealthcareValue: {:integer, "int64"},
      visionPrescriptionValue: {:integer, "int64"}
    ]
  end
end
