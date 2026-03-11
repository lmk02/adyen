defmodule Adyen.PaymentsApp.V1.PaymentsAppDto do
  @moduledoc """
  Provides struct and type for a PaymentsAppDto
  """

  @type t :: %__MODULE__{
          installationId: String.t(),
          merchantAccountCode: String.t(),
          merchantStoreCode: String.t() | nil,
          status: String.t()
        }

  defstruct [:installationId, :merchantAccountCode, :merchantStoreCode, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      installationId: :string,
      merchantAccountCode: :string,
      merchantStoreCode: :string,
      status: :string
    ]
  end
end
