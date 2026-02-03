defmodule Adyen.StructureTest do
  use ExUnit.Case

  alias Adyen.BalancePlatform.BalanceAccounts
  alias Adyen.Checkout.Payments
  alias Adyen.Transfers.Transfers

  test "modules are generated in correct namespaces" do
    assert Code.ensure_loaded?(Payments)
    assert Code.ensure_loaded?(Transfers)
    assert Code.ensure_loaded?(BalanceAccounts)
  end

  test "functions exist on generated modules with correct naming" do
    assert function_exported?(Payments, :create_session, 2)
    assert function_exported?(Payments, :get_session, 2)
    assert function_exported?(Transfers, :create_transfer, 2)
    assert function_exported?(BalanceAccounts, :get_balance_account, 2)
  end
end
