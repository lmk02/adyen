defmodule Adyen.LegalEntity.V4.CapabilityProblem do
  @moduledoc """
  Provides struct and type for a CapabilityProblem
  """

  @type t :: %__MODULE__{
          entity: Adyen.LegalEntity.V4.CapabilityProblemEntity.t() | nil,
          verificationErrors: [Adyen.LegalEntity.V4.VerificationError.t()] | nil
        }

  defstruct [:entity, :verificationErrors]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      entity: {Adyen.LegalEntity.V4.CapabilityProblemEntity, :t},
      verificationErrors: [{Adyen.LegalEntity.V4.VerificationError, :t}]
    ]
  end
end
