defmodule Adyen.LegalEntity.V4.PciSigningRequest do
  @moduledoc """
  Provides struct and type for a PciSigningRequest
  """

  @type t :: %__MODULE__{pciTemplateReferences: [String.t()], signedBy: String.t()}

  defstruct [:pciTemplateReferences, :signedBy]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [pciTemplateReferences: [:string], signedBy: :string]
  end
end
