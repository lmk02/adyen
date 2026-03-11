defmodule Adyen.DataProtection.V1.SubjectErasureByPspReferenceRequest do
  @moduledoc """
  Provides struct and type for a SubjectErasureByPspReferenceRequest
  """

  @type t :: %__MODULE__{
          forceErasure: boolean | nil,
          merchantAccount: String.t() | nil,
          pspReference: String.t() | nil
        }

  defstruct [:forceErasure, :merchantAccount, :pspReference]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [forceErasure: :boolean, merchantAccount: :string, pspReference: :string]
  end
end
