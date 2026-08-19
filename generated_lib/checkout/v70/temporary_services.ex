defmodule Adyen.Checkout.V70.TemporaryServices do
  @moduledoc """
  Provides struct and type for a TemporaryServices
  """

  @type t :: %__MODULE__{
          employeeName: String.t() | nil,
          endDate: Date.t() | nil,
          hourRate: integer | nil,
          hoursWorked: integer | nil,
          jobDescription: String.t() | nil,
          serviceRequestor: String.t() | nil,
          startDate: Date.t() | nil
        }

  defstruct [
    :employeeName,
    :endDate,
    :hourRate,
    :hoursWorked,
    :jobDescription,
    :serviceRequestor,
    :startDate
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      employeeName: :string,
      endDate: {:string, "date"},
      hourRate: {:integer, "int32"},
      hoursWorked: {:integer, "int32"},
      jobDescription: :string,
      serviceRequestor: :string,
      startDate: {:string, "date"}
    ]
  end
end
