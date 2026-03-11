defmodule Adyen.Management.V3.InstallAndroidCertificateDetails do
  @moduledoc """
  Provides struct and type for a InstallAndroidCertificateDetails
  """

  @type t :: %__MODULE__{certificateId: String.t() | nil, type: String.t() | nil}

  defstruct [:certificateId, :type]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [certificateId: :string, type: {:const, "InstallAndroidCertificate"}]
  end
end
