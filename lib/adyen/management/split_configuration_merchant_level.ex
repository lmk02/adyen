defmodule Adyen.Management.SplitConfigurationMerchantLevel do
  @moduledoc """
  Provides API endpoints related to split configuration merchant level
  """

  @default_client Adyen.Client

  @doc """
  Delete a split configuration profile

  Deletes the split configuration profile specified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API - SplitConfiguration read and write
  """
  @spec delete_merchants_merchant_id_split_configurations_split_configuration_id(
          merchantId :: String.t(),
          splitConfigurationId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.SplitConfiguration.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def delete_merchants_merchant_id_split_configurations_split_configuration_id(
        merchantId,
        splitConfigurationId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, splitConfigurationId: splitConfigurationId],
      call:
        {Adyen.Management.SplitConfigurationMerchantLevel,
         :delete_merchants_merchant_id_split_configurations_split_configuration_id},
      url: "/merchants/#{merchantId}/splitConfigurations/#{splitConfigurationId}",
      method: :delete,
      response: [
        {200, {Adyen.Management.SplitConfiguration, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Delete a rule

  Deletes the rule specified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API - SplitConfiguration read and write
  """
  @spec delete_merchants_merchant_id_split_configurations_split_configuration_id_rules_rule_id(
          merchantId :: String.t(),
          splitConfigurationId :: String.t(),
          ruleId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.SplitConfiguration.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def delete_merchants_merchant_id_split_configurations_split_configuration_id_rules_rule_id(
        merchantId,
        splitConfigurationId,
        ruleId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, splitConfigurationId: splitConfigurationId, ruleId: ruleId],
      call:
        {Adyen.Management.SplitConfigurationMerchantLevel,
         :delete_merchants_merchant_id_split_configurations_split_configuration_id_rules_rule_id},
      url: "/merchants/#{merchantId}/splitConfigurations/#{splitConfigurationId}/rules/#{ruleId}",
      method: :delete,
      response: [
        {200, {Adyen.Management.SplitConfiguration, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a list of split configuration profiles

  Returns the list of split configuration profiles for the merchant account.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API - SplitConfiguration read and write
  """
  @spec get_merchants_merchant_id_split_configurations(merchantId :: String.t(), opts :: keyword) ::
          {:ok, Adyen.Management.SplitConfigurationList.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_split_configurations(merchantId, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId],
      call:
        {Adyen.Management.SplitConfigurationMerchantLevel,
         :get_merchants_merchant_id_split_configurations},
      url: "/merchants/#{merchantId}/splitConfigurations",
      method: :get,
      response: [
        {200, {Adyen.Management.SplitConfigurationList, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Get a split configuration profile

  Returns the details of the split configuration profile specified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API - SplitConfiguration read and write
  """
  @spec get_merchants_merchant_id_split_configurations_split_configuration_id(
          merchantId :: String.t(),
          splitConfigurationId :: String.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.SplitConfiguration.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def get_merchants_merchant_id_split_configurations_split_configuration_id(
        merchantId,
        splitConfigurationId,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, splitConfigurationId: splitConfigurationId],
      call:
        {Adyen.Management.SplitConfigurationMerchantLevel,
         :get_merchants_merchant_id_split_configurations_split_configuration_id},
      url: "/merchants/#{merchantId}/splitConfigurations/#{splitConfigurationId}",
      method: :get,
      response: [
        {200, {Adyen.Management.SplitConfiguration, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update the description of the split configuration profile

  Changes the description of the split configuration profile specified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API - SplitConfiguration read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_merchants_merchant_id_split_configurations_split_configuration_id(
          merchantId :: String.t(),
          splitConfigurationId :: String.t(),
          body :: Adyen.Management.UpdateSplitConfigurationRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.SplitConfiguration.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def patch_merchants_merchant_id_split_configurations_split_configuration_id(
        merchantId,
        splitConfigurationId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, splitConfigurationId: splitConfigurationId, body: body],
      call:
        {Adyen.Management.SplitConfigurationMerchantLevel,
         :patch_merchants_merchant_id_split_configurations_split_configuration_id},
      url: "/merchants/#{merchantId}/splitConfigurations/#{splitConfigurationId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.UpdateSplitConfigurationRequest, :t}}],
      response: [
        {200, {Adyen.Management.SplitConfiguration, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update the split conditions

  Changes the [split conditions of the rule](https://docs.adyen.com/platforms/automatic-split-configuration/manage-split-configurations/api/#update-condition) specified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API - SplitConfiguration read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_merchants_merchant_id_split_configurations_split_configuration_id_rules_rule_id(
          merchantId :: String.t(),
          splitConfigurationId :: String.t(),
          ruleId :: String.t(),
          body :: Adyen.Management.UpdateSplitConfigurationRuleRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.SplitConfiguration.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def patch_merchants_merchant_id_split_configurations_split_configuration_id_rules_rule_id(
        merchantId,
        splitConfigurationId,
        ruleId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [
        merchantId: merchantId,
        splitConfigurationId: splitConfigurationId,
        ruleId: ruleId,
        body: body
      ],
      call:
        {Adyen.Management.SplitConfigurationMerchantLevel,
         :patch_merchants_merchant_id_split_configurations_split_configuration_id_rules_rule_id},
      url: "/merchants/#{merchantId}/splitConfigurations/#{splitConfigurationId}/rules/#{ruleId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.UpdateSplitConfigurationRuleRequest, :t}}],
      response: [
        {200, {Adyen.Management.SplitConfiguration, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Update the split logic

  Changes the [split logic](https://docs.adyen.com/platforms/automatic-split-configuration/manage-split-configurations/api/#update-split-logic) specified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API - SplitConfiguration read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec patch_merchants_merchant_id_split_configurations_split_configuration_id_rules_rule_id_split_logic_split_logic_id(
          merchantId :: String.t(),
          splitConfigurationId :: String.t(),
          ruleId :: String.t(),
          splitLogicId :: String.t(),
          body :: Adyen.Management.UpdateSplitConfigurationLogicRequest.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.SplitConfiguration.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def patch_merchants_merchant_id_split_configurations_split_configuration_id_rules_rule_id_split_logic_split_logic_id(
        merchantId,
        splitConfigurationId,
        ruleId,
        splitLogicId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [
        merchantId: merchantId,
        splitConfigurationId: splitConfigurationId,
        ruleId: ruleId,
        splitLogicId: splitLogicId,
        body: body
      ],
      call:
        {Adyen.Management.SplitConfigurationMerchantLevel,
         :patch_merchants_merchant_id_split_configurations_split_configuration_id_rules_rule_id_split_logic_split_logic_id},
      url:
        "/merchants/#{merchantId}/splitConfigurations/#{splitConfigurationId}/rules/#{ruleId}/splitLogic/#{splitLogicId}",
      body: body,
      method: :patch,
      request: [{"application/json", {Adyen.Management.UpdateSplitConfigurationLogicRequest, :t}}],
      response: [
        {200, {Adyen.Management.SplitConfiguration, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a split configuration profile

  Creates a split configuration profile to [split payments automatically](https://docs.adyen.com/platforms/automatic-split-configuration/). After you [associate it with a store](https://docs.adyen.com/api-explorer/Management/latest/patch/merchants/(merchantId)/stores/(storeId)#request-splitConfiguration) in your merchant account, it splits the funds of all transactions processed through that store between your liable balance account and [your user's balance account](https://docs.adyen.com/api-explorer/Management/latest/patch/merchants/(merchantId)/stores/(storeId)#request-splitConfiguration-balanceAccountId).

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API - SplitConfiguration read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_split_configurations(
          merchantId :: String.t(),
          body :: Adyen.Management.SplitConfiguration.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.SplitConfiguration.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def post_merchants_merchant_id_split_configurations(merchantId, body, opts \\ []) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, body: body],
      call:
        {Adyen.Management.SplitConfigurationMerchantLevel,
         :post_merchants_merchant_id_split_configurations},
      url: "/merchants/#{merchantId}/splitConfigurations",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.SplitConfiguration, :t}}],
      response: [
        {200, {Adyen.Management.SplitConfiguration, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end

  @doc """
  Create a rule

  [Creates a rule](https://docs.adyen.com/platforms/automatic-split-configuration/manage-split-configurations/api/#create-rule) in the split configuration profile specified in the path.

  To make this request, your API credential must have the following [role](https://docs.adyen.com/development-resources/api-credentials#api-permissions):
  * Management API - SplitConfiguration read and write

  ## Request Body

  **Content Types**: `application/json`
  """
  @spec post_merchants_merchant_id_split_configurations_split_configuration_id(
          merchantId :: String.t(),
          splitConfigurationId :: String.t(),
          body :: Adyen.Management.SplitConfigurationRule.t(),
          opts :: keyword
        ) ::
          {:ok, Adyen.Management.SplitConfiguration.t()}
          | {:error, Adyen.Management.RestServiceError.t()}
  def post_merchants_merchant_id_split_configurations_split_configuration_id(
        merchantId,
        splitConfigurationId,
        body,
        opts \\ []
      ) do
    client = opts[:client] || @default_client

    client.request(%{
      args: [merchantId: merchantId, splitConfigurationId: splitConfigurationId, body: body],
      call:
        {Adyen.Management.SplitConfigurationMerchantLevel,
         :post_merchants_merchant_id_split_configurations_split_configuration_id},
      url: "/merchants/#{merchantId}/splitConfigurations/#{splitConfigurationId}",
      body: body,
      method: :post,
      request: [{"application/json", {Adyen.Management.SplitConfigurationRule, :t}}],
      response: [
        {200, {Adyen.Management.SplitConfiguration, :t}},
        {204, :null},
        {400, {Adyen.Management.RestServiceError, :t}},
        {401, {Adyen.Management.RestServiceError, :t}},
        {403, {Adyen.Management.RestServiceError, :t}},
        {422, {Adyen.Management.RestServiceError, :t}},
        {500, {Adyen.Management.RestServiceError, :t}}
      ],
      opts: opts
    })
  end
end
