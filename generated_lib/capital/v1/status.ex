defmodule Adyen.Capital.V1.Status do
  @moduledoc """
  Provides struct and type for a Status
  """

  @type t :: %__MODULE__{actions: [Adyen.Capital.V1.Action.t()] | nil, code: String.t()}

  defstruct [:actions, :code]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      actions: [{Adyen.Capital.V1.Action, :t}],
      code:
        {:enum,
         [
           "Pending",
           "Active",
           "Repaid",
           "WrittenOff",
           "Failed",
           "Revoked",
           "Requested",
           "Reviewing",
           "Approved",
           "Rejected",
           "Cancelled"
         ]}
    ]
  end
end
