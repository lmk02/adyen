defmodule Adyen.NotificationConfiguration.V1.GenericResponse do
  @moduledoc """
  Provides struct and type for a GenericResponse
  """

  @type t :: %__MODULE__{
          pspReference: String.t() | nil,
          resultCode: String.t() | nil,
          submittedAsync: boolean | nil
        }

  defstruct [:pspReference, :resultCode, :submittedAsync]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [pspReference: :string, resultCode: :string, submittedAsync: :boolean]
  end
end
