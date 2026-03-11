defmodule Adyen.Accounts.MigrationData do
  @moduledoc """
  Provides struct and type for a MigrationData
  """

  @type t :: %__MODULE__{
          accountHolderId: String.t() | nil,
          balancePlatform: String.t() | nil,
          migrated: boolean | nil,
          migratedAccounts: [Adyen.Accounts.MigratedAccounts.t()] | nil,
          migratedShareholders: [Adyen.Accounts.MigratedShareholders.t()] | nil,
          migratedStores: [Adyen.Accounts.MigratedStores.t()] | nil,
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
      migratedAccounts: [{Adyen.Accounts.MigratedAccounts, :t}],
      migratedShareholders: [{Adyen.Accounts.MigratedShareholders, :t}],
      migratedStores: [{Adyen.Accounts.MigratedStores, :t}],
      migrationDate: {:string, "date-time"}
    ]
  end
end
