defmodule Adyen.TerminalAPI.Response do
  @moduledoc """
  Provides struct and type for a Response
  """

  @type t :: %__MODULE__{
          AdditionalResponse: String.t() | nil,
          ErrorCondition: String.t() | nil,
          Result: String.t()
        }

  defstruct [:AdditionalResponse, :ErrorCondition, :Result]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      AdditionalResponse: :string,
      ErrorCondition:
        {:enum,
         [
           "Aborted",
           "Busy",
           "Cancel",
           "DeviceOut",
           "InProgress",
           "InsertedCard",
           "InvalidCard",
           "LoggedOut",
           "MessageFormat",
           "NotAllowed",
           "NotFound",
           "PaymentRestriction",
           "Refusal",
           "UnavailableDevice",
           "UnavailableService",
           "UnreachableHost",
           "WrongPIN"
         ]},
      Result: {:enum, ["Failure", "Partial", "Success"]}
    ]
  end
end
