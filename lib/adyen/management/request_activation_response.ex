defmodule Adyen.Management.RequestActivationResponse do
  @moduledoc """
  Provides struct and type for a RequestActivationResponse
  """

  @type t :: %__MODULE__{companyId: String.t() | nil, merchantId: String.t() | nil}

  defstruct [:companyId, :merchantId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [companyId: :string, merchantId: :string]
  end
end
