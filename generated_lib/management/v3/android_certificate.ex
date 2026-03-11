defmodule Adyen.Management.V3.AndroidCertificate do
  @moduledoc """
  Provides struct and type for a AndroidCertificate
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          extension: String.t() | nil,
          id: String.t(),
          name: String.t() | nil,
          notAfter: DateTime.t() | nil,
          notBefore: DateTime.t() | nil,
          status: String.t() | nil
        }

  defstruct [:description, :extension, :id, :name, :notAfter, :notBefore, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      extension: :string,
      id: :string,
      name: :string,
      notAfter: {:string, "date-time"},
      notBefore: {:string, "date-time"},
      status: :string
    ]
  end
end
