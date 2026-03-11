defmodule Adyen.Management.V1.AfterpayTouchInfo do
  @moduledoc """
  Provides struct and type for a AfterpayTouchInfo
  """

  @type t :: %__MODULE__{supportEmail: String.t() | nil, supportUrl: String.t()}

  defstruct [:supportEmail, :supportUrl]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [supportEmail: :string, supportUrl: :string]
  end
end
