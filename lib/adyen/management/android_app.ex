defmodule Adyen.Management.AndroidApp do
  @moduledoc """
  Provides struct and type for a AndroidApp
  """

  @type t :: %__MODULE__{
          description: String.t() | nil,
          errorCode: String.t() | nil,
          errors: [Adyen.Management.AndroidAppError.t()] | nil,
          id: String.t(),
          label: String.t() | nil,
          packageName: String.t() | nil,
          status: String.t(),
          versionCode: integer | nil,
          versionName: String.t() | nil
        }

  defstruct [
    :description,
    :errorCode,
    :errors,
    :id,
    :label,
    :packageName,
    :status,
    :versionCode,
    :versionName
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      description: :string,
      errorCode: :string,
      errors: [{Adyen.Management.AndroidAppError, :t}],
      id: :string,
      label: :string,
      packageName: :string,
      status: {:enum, ["archived", "error", "invalid", "processing", "ready"]},
      versionCode: {:integer, "int32"},
      versionName: :string
    ]
  end
end
