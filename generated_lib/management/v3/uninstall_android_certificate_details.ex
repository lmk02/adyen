defmodule Adyen.Management.V3.UninstallAndroidCertificateDetails do
  @moduledoc """
  Provides struct and type for a UninstallAndroidCertificateDetails
  """

  @type t :: %__MODULE__{certificateId: String.t() | nil, type: String.t() | nil}

  defstruct [:certificateId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [certificateId: :string, type: {:const, "UninstallAndroidCertificate"}]
  end
end
