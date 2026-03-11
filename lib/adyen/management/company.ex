defmodule Adyen.Management.Company do
  @moduledoc """
  Provides struct and type for a Company
  """

  @type t :: %__MODULE__{
          _links: Adyen.Management.CompanyLinks.t() | nil,
          dataCenters: [Adyen.Management.DataCenter.t()] | nil,
          description: String.t() | nil,
          id: String.t() | nil,
          name: String.t() | nil,
          reference: String.t() | nil,
          status: String.t() | nil
        }

  defstruct [:_links, :dataCenters, :description, :id, :name, :reference, :status]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      _links: {Adyen.Management.CompanyLinks, :t},
      dataCenters: [{Adyen.Management.DataCenter, :t}],
      description: :string,
      id: :string,
      name: :string,
      reference: :string,
      status: :string
    ]
  end
end
