defmodule Adyen.Capital.V1.Disbursements do
  @moduledoc """
  Provides struct and type for a Disbursements
  """

  @type t :: %__MODULE__{disbursements: [Adyen.Capital.V1.Disbursement.t()]}

  defstruct [:disbursements]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [disbursements: [{Adyen.Capital.V1.Disbursement, :t}]]
  end
end
