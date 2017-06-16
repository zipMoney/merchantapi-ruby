#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require "uri"

module ZipMoney
  class TokensApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create token
    # Tokenises a zip account allowing a charge to be performed at a later date without direct customer involvement.  In order to create a token you will first need to request customer approval by implementing one of the online checkout flows. The checkout id will then be provided as the authority when tokenising.  | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | account_inoperative | The account is in arrears or closed and cannot be charged | | account_locked | The account is locked |
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTokenRequest] :body 
    # @option opts [String] :idempotency_key The unique idempotency key.
    # @return [Token]
    def tokens_create(opts = {})
      data, _status_code, _headers = tokens_create_with_http_info(opts)
      return data
    end

    # Create token
    # Tokenises a zip account allowing a charge to be performed at a later date without direct customer involvement.  In order to create a token you will first need to request customer approval by implementing one of the online checkout flows. The checkout id will then be provided as the authority when tokenising.  | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | account_inoperative | The account is in arrears or closed and cannot be charged | | account_locked | The account is locked |
    # @param [Hash] opts the optional parameters
    # @option opts [CreateTokenRequest] :body 
    # @option opts [String] :idempotency_key The unique idempotency key.
    # @return [Array<(Token, Fixnum, Hash)>] Token data, response status code and response headers
    def tokens_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TokensApi.tokens_create ..."
      end
      # resource path
      local_var_path = "/tokens".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/javascript'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['Authorization']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Token')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApi#tokens_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
