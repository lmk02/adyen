import Config

# Automatically generated profiles for oapi_generator
# Run with: mix api.gen adyen_<service_name> priv/specs/<filename>

config :oapi_generator,
  adyen_accounts: [
    output: [
      base_module: Adyen.Accounts,
      location: "lib/adyen/accounts",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_control: [
    output: [
      base_module: Adyen.BalanceControl,
      location: "lib/adyen/balance_control",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_platform_accounting_notification: [
    output: [
      base_module: Adyen.BalancePlatformAccountingNotification,
      location: "lib/adyen/balance_platform_accounting_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_platform_acs_notification: [
    output: [
      base_module: Adyen.BalancePlatformAcsNotification,
      location: "lib/adyen/balance_platform_acs_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_platform_balance_notification: [
    output: [
      base_module: Adyen.BalancePlatformBalanceNotification,
      location: "lib/adyen/balance_platform_balance_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_platform_configuration_notification: [
    output: [
      base_module: Adyen.BalancePlatformConfigurationNotification,
      location: "lib/adyen/balance_platform_configuration_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_platform_dispute_notification: [
    output: [
      base_module: Adyen.BalancePlatformDisputeNotification,
      location: "lib/adyen/balance_platform_dispute_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_platform_grant_notification: [
    output: [
      base_module: Adyen.BalancePlatformGrantNotification,
      location: "lib/adyen/balance_platform_grant_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_platform_negative_balance_compensation_warning_notification: [
    output: [
      base_module: Adyen.BalancePlatformNegativeBalanceCompensationWarningNotification,
      location: "lib/adyen/balance_platform_negative_balance_compensation_warning_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_platform_notification: [
    output: [
      base_module: Adyen.BalancePlatformNotification,
      location: "lib/adyen/balance_platform_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_platform_payment_notification: [
    output: [
      base_module: Adyen.BalancePlatformPaymentNotification,
      location: "lib/adyen/balance_platform_payment_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_platform_relayed_authorisation_notification: [
    output: [
      base_module: Adyen.BalancePlatformRelayedAuthorisationNotification,
      location: "lib/adyen/balance_platform_relayed_authorisation_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_platform_report_notification: [
    output: [
      base_module: Adyen.BalancePlatformReportNotification,
      location: "lib/adyen/balance_platform_report_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_platform: [
    output: [
      base_module: Adyen.BalancePlatform,
      location: "lib/adyen/balance_platform",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_platform_transaction_notification: [
    output: [
      base_module: Adyen.BalancePlatformTransactionNotification,
      location: "lib/adyen/balance_platform_transaction_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_balance_platform_transfer_notification: [
    output: [
      base_module: Adyen.BalancePlatformTransferNotification,
      location: "lib/adyen/balance_platform_transfer_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_bin_lookup: [
    output: [
      base_module: Adyen.BinLookup,
      location: "lib/adyen/bin_lookup",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_capital: [
    output: [
      base_module: Adyen.Capital,
      location: "lib/adyen/capital",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_checkout: [
    output: [
      base_module: Adyen.Checkout,
      location: "lib/adyen/checkout",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_cloud_device: [
    output: [
      base_module: Adyen.CloudDevice,
      location: "lib/adyen/cloud_device",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_data_protection: [
    output: [
      base_module: Adyen.DataProtection,
      location: "lib/adyen/data_protection",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_dispute: [
    output: [
      base_module: Adyen.Dispute,
      location: "lib/adyen/dispute",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_foreign_exchange: [
    output: [
      base_module: Adyen.ForeignExchange,
      location: "lib/adyen/foreign_exchange",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_funds: [
    output: [
      base_module: Adyen.Funds,
      location: "lib/adyen/funds",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_hop: [
    output: [
      base_module: Adyen.Hop,
      location: "lib/adyen/hop",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_legal_entity: [
    output: [
      base_module: Adyen.LegalEntity,
      location: "lib/adyen/legal_entity",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_management_notification: [
    output: [
      base_module: Adyen.ManagementNotification,
      location: "lib/adyen/management_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_management: [
    output: [
      base_module: Adyen.Management,
      location: "lib/adyen/management",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_market_pay_notification: [
    output: [
      base_module: Adyen.MarketPayNotification,
      location: "lib/adyen/market_pay_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_notification_configuration: [
    output: [
      base_module: Adyen.NotificationConfiguration,
      location: "lib/adyen/notification_configuration",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_open_banking: [
    output: [
      base_module: Adyen.OpenBanking,
      location: "lib/adyen/open_banking",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_payments: [
    output: [
      base_module: Adyen.Payments,
      location: "lib/adyen/payments",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_payments_app: [
    output: [
      base_module: Adyen.PaymentsApp,
      location: "lib/adyen/payments_app",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_payouts: [
    output: [
      base_module: Adyen.Payouts,
      location: "lib/adyen/payouts",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_recurring: [
    output: [
      base_module: Adyen.Recurring,
      location: "lib/adyen/recurring",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_session_authentication: [
    output: [
      base_module: Adyen.SessionAuthentication,
      location: "lib/adyen/session_authentication",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_session: [
    output: [
      base_module: Adyen.Session,
      location: "lib/adyen/session",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_stored_value: [
    output: [
      base_module: Adyen.StoredValue,
      location: "lib/adyen/stored_value",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_terminal_api: [
    output: [
      base_module: Adyen.TerminalAPI,
      location: "lib/adyen/terminal_api",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_test_card: [
    output: [
      base_module: Adyen.TestCard,
      location: "lib/adyen/test_card",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_tfm_api: [
    output: [
      base_module: Adyen.TfmAPI,
      location: "lib/adyen/tfm_api",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_tokenization_notification: [
    output: [
      base_module: Adyen.TokenizationNotification,
      location: "lib/adyen/tokenization_notification",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_transaction: [
    output: [
      base_module: Adyen.Transaction,
      location: "lib/adyen/transaction",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_transfers: [
    output: [
      base_module: Adyen.Transfers,
      location: "lib/adyen/transfers",
      default_client: Adyen.Client
    ]
  ]
config :oapi_generator,
  adyen_webhooks: [
    output: [
      base_module: Adyen.Webhooks,
      location: "lib/adyen/webhooks",
      default_client: Adyen.Client
    ]
  ]
