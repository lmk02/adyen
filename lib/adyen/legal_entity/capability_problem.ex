defmodule Adyen.LegalEntity.CapabilityProblem do
  @moduledoc """
  Provides struct and type for a CapabilityProblem
  """

  @type t :: %__MODULE__{
          entity: Adyen.LegalEntity.CapabilityProblemEntity.t() | nil,
          verificationErrors: [Adyen.LegalEntity.VerificationError.t()] | nil
        }

  defstruct [:entity, :verificationErrors]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      entity: {Adyen.LegalEntity.CapabilityProblemEntity, :t},
      verificationErrors: [{Adyen.LegalEntity.VerificationError, :t}]
    ]
  end
end
