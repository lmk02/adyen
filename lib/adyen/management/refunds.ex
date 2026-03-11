defmodule Adyen.Management.Refunds do
  @moduledoc """
  Provides struct and type for a Refunds
  """

  @type t :: %__MODULE__{
          referenced: Adyen.Management.Referenced.t() | nil,
          unreferenced: Adyen.Management.Unreferenced.t() | nil
        }

  defstruct [:referenced, :unreferenced]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      referenced: {Adyen.Management.Referenced, :t},
      unreferenced: {Adyen.Management.Unreferenced, :t}
    ]
  end
end
