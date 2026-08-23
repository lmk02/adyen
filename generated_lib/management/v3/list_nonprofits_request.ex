defmodule Adyen.Management.V3.ListNonprofitsRequest do
  @moduledoc """
  Provides struct and type for a ListNonprofitsRequest
  """

  @type t :: %__MODULE__{accountHolderIds: [String.t()]}

  defstruct [:accountHolderIds]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [accountHolderIds: [:string]]
  end
end
