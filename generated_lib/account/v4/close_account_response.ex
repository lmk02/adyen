defmodule Adyen.Account.V4.CloseAccountResponse do
  @moduledoc """
  Provides struct and type for a CloseAccountResponse
  """

  @type t :: %__MODULE__{
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          status: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [:pspReference, :resultCode, :status, :submittedAsync]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      pspReference: :string,
      resultCode: :string,
      status: {:enum, ["Active", "Closed", "Inactive", "Suspended"]},
      submittedAsync: :boolean
    ]
  end
end
