defmodule Adyen.Account.V3.UltimateParentCompanyWrapper do
  @moduledoc """
  Provides struct and type for a UltimateParentCompanyWrapper
  """

  @type t :: %__MODULE__{UltimateParentCompany: Adyen.Account.V3.UltimateParentCompany.t() | nil}

  defstruct [:UltimateParentCompany]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [UltimateParentCompany: {Adyen.Account.V3.UltimateParentCompany, :t}]
  end
end
