defmodule Adyen.Management.AndroidCertificatesResponse do
  @moduledoc """
  Provides struct and type for a AndroidCertificatesResponse
  """

  @type t :: %__MODULE__{data: [Adyen.Management.AndroidCertificate.t()] | nil}

  defstruct [:data]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [data: [{Adyen.Management.AndroidCertificate, :t}]]
  end
end
