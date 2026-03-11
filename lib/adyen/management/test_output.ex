defmodule Adyen.Management.TestOutput do
  @moduledoc """
  Provides struct and type for a TestOutput
  """

  @type t :: %__MODULE__{
          merchantId: String.t() | nil,
          output: String.t() | nil,
          requestSent: String.t() | nil,
          responseCode: String.t() | nil,
          responseTime: String.t() | nil,
          status: String.t()
        }

  defstruct [:merchantId, :output, :requestSent, :responseCode, :responseTime, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      merchantId: :string,
      output: :string,
      requestSent: :string,
      responseCode: :string,
      responseTime: :string,
      status: :string
    ]
  end
end
