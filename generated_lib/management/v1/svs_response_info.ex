defmodule Adyen.Management.V1.SvsResponseInfo do
  @moduledoc """
  Provides struct and type for a SvsResponseInfo
  """

  @type t :: %__MODULE__{authorisationMid: String.t(), currencyCode: String.t()}

  defstruct [:authorisationMid, :currencyCode]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [authorisationMid: :string, currencyCode: :string]
  end
end
