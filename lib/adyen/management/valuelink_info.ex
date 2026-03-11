defmodule Adyen.Management.ValuelinkInfo do
  @moduledoc """
  Provides struct and type for a ValuelinkInfo
  """

  @type t :: %__MODULE__{
          authorisationMid: String.t(),
          pinSupport: String.t(),
          submitterId: String.t() | nil,
          terminalId: String.t() | nil
        }

  defstruct [:authorisationMid, :pinSupport, :submitterId, :terminalId]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      authorisationMid: :string,
      pinSupport: {:enum, ["PIN", "NO PIN"]},
      submitterId: :string,
      terminalId: :string
    ]
  end
end
