defmodule Adyen.TfmAPI.V1.GetStoresUnderAccountRequest do
  @moduledoc """
  Provides struct and type for a GetStoresUnderAccountRequest
  """

  @type t :: %__MODULE__{companyAccount: String.t(), merchantAccount: String.t() | nil}

  defstruct [:companyAccount, :merchantAccount]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [companyAccount: :string, merchantAccount: :string]
  end
end
