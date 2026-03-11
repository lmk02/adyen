defmodule Adyen.Account.V6.MigrationData do
  @moduledoc """
  Provides struct and type for a MigrationData
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t() | nil,
          balancePlatform: String.t() | nil,
          migrated: boolean | nil,
          migratedAccounts: [Adyen.Account.V6.MigratedAccounts.t()] | nil,
          migratedShareholders: [Adyen.Account.V6.MigratedShareholders.t()] | nil,
          migratedStores: [Adyen.Account.V6.MigratedStores.t()] | nil,
          migrationDate: DateTime.t() | nil
        }

  defstruct [
    :accountHolderId,
    :balancePlatform,
    :migrated,
    :migratedAccounts,
    :migratedShareholders,
    :migratedStores,
    :migrationDate
  ]

  @doc false
  @spec __fields__(atom) :: keyword
  def __fields__(type \\ :t)

  def __fields__(:t) do
    [
      accountHolderId: :string,
      balancePlatform: :string,
      migrated: :boolean,
      migratedAccounts: [{Adyen.Account.V6.MigratedAccounts, :t}],
      migratedShareholders: [{Adyen.Account.V6.MigratedShareholders, :t}],
      migratedStores: [{Adyen.Account.V6.MigratedStores, :t}],
      migrationDate: {:string, "date-time"}
    ]
  end
end
