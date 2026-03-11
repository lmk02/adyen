defmodule Adyen.TerminalAPI.V1.Input do
  @moduledoc """
  Provides struct and type for a Input
  """

  @type t :: %__MODULE__{
          ConfirmedFlag: boolean | nil,
          DigitInput: integer | nil,
          FunctionKey: integer | nil,
          InputCommand: String.t(),
          MenuEntryNumber: [integer] | nil,
          Password: String.t() | nil,
          TextInput: String.t() | nil
        }

  defstruct [
    :ConfirmedFlag,
    :DigitInput,
    :FunctionKey,
    :InputCommand,
    :MenuEntryNumber,
    :Password,
    :TextInput
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      ConfirmedFlag: :boolean,
      DigitInput: :integer,
      FunctionKey: :integer,
      InputCommand:
        {:enum,
         [
           "DecimalString",
           "DigitString",
           "GetAnyKey",
           "GetConfirmation",
           "GetFunctionKey",
           "GetMenuEntry",
           "Password",
           "SiteManager",
           "TextString"
         ]},
      MenuEntryNumber: [:integer],
      Password: :string,
      TextInput: :string
    ]
  end
end
