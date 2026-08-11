defmodule Adyen.TerminalAPI.V1.InputData do
  @moduledoc """
  Provides struct and type for a InputData
  """

  @type t :: %__MODULE__{
          BeepKeyFlag: boolean | nil,
          DefaultInputString: String.t() | nil,
          DefaultLayoutString: String.t() | nil,
          Device: String.t(),
          DisableCancelFlag: boolean | nil,
          DisableCorrectFlag: boolean | nil,
          DisableValidFlag: boolean | nil,
          FromRightToLeftFlag: boolean | nil,
          GlobalCorrectionFlag: boolean | nil,
          ImmediateResponseFlag: boolean | nil,
          InfoQualify: String.t(),
          InputCommand: String.t(),
          MaskCharactersFlag: boolean | nil,
          MaxDecimalLength: integer | nil,
          MaxInputTime: integer | nil,
          MaxLength: integer | nil,
          MenuBackFlag: boolean | nil,
          MinLength: integer | nil,
          NotifyCardInputFlag: boolean | nil,
          StringMask: String.t() | nil,
          WaitUserValidationFlag: boolean | nil
        }

  defstruct [
    :BeepKeyFlag,
    :DefaultInputString,
    :DefaultLayoutString,
    :Device,
    :DisableCancelFlag,
    :DisableCorrectFlag,
    :DisableValidFlag,
    :FromRightToLeftFlag,
    :GlobalCorrectionFlag,
    :ImmediateResponseFlag,
    :InfoQualify,
    :InputCommand,
    :MaskCharactersFlag,
    :MaxDecimalLength,
    :MaxInputTime,
    :MaxLength,
    :MenuBackFlag,
    :MinLength,
    :NotifyCardInputFlag,
    :StringMask,
    :WaitUserValidationFlag
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      BeepKeyFlag: :boolean,
      DefaultInputString: :string,
      DefaultLayoutString: :string,
      Device: {:enum, ["CashierDisplay", "CustomerDisplay", "CashierInput", "CustomerInput"]},
      DisableCancelFlag: :boolean,
      DisableCorrectFlag: :boolean,
      DisableValidFlag: :boolean,
      FromRightToLeftFlag: :boolean,
      GlobalCorrectionFlag: :boolean,
      ImmediateResponseFlag: :boolean,
      InfoQualify:
        {:enum,
         [
           "Status",
           "Error",
           "Display",
           "Sound",
           "Input",
           "POIReplication",
           "CustomerAssistance",
           "Receipt",
           "Document",
           "Voucher"
         ]},
      InputCommand:
        {:enum,
         [
           "GetAnyKey",
           "GetConfirmation",
           "SiteManager",
           "TextString",
           "DigitString",
           "DecimalString",
           "GetFunctionKey",
           "GetMenuEntry",
           "Password"
         ]},
      MaskCharactersFlag: :boolean,
      MaxDecimalLength: :integer,
      MaxInputTime: :integer,
      MaxLength: :integer,
      MenuBackFlag: :boolean,
      MinLength: :integer,
      NotifyCardInputFlag: :boolean,
      StringMask: :string,
      WaitUserValidationFlag: :boolean
    ]
  end
end
