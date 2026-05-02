defmodule Adyen.Management.V1.AfterpayTouchResponseInfo do
  @moduledoc """
  Provides struct and type for a AfterpayTouchResponseInfo
  """

  @type t :: %__MODULE__{supportEmail: String.t() | nil, supportUrl: String.t() | nil}

  defstruct [:supportEmail, :supportUrl]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [supportEmail: :string, supportUrl: :string]
  end
end
