defmodule Adyen.Account.V4.DocumentDetailWrapper do
  @moduledoc """
  Provides struct and type for a DocumentDetailWrapper
  """

  @type t :: %__MODULE__{DocumentDetail: Adyen.Account.V4.DocumentDetail.t() | nil}

  defstruct [:DocumentDetail]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [DocumentDetail: {Adyen.Account.V4.DocumentDetail, :t}]
  end
end
