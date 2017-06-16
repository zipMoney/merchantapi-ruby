#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require "uri"

module ZipMoney
  class RefundsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a refund
    # Creates a refund for a previously authorised or captured charge. See #model:xWJer4QQyRumRi9LD for more information.  This endpoint will return 201 or otherwise 402 if unable to perform the refund.   | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | amount_invalid | The refund amount is greater than the remaining captured total | | invalid_state | 1. The charge is already fully refunded |
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRefundRequest] :body 
    # @option opts [String] :idempotency_key The unique idempotency key.
    # @return [Refund]
    def refunds_create(opts = {})
      data, _status_code, _headers = refunds_create_with_http_info(opts)
      return data
    end

    # Create a refund
    # Creates a refund for a previously authorised or captured charge. See #model:xWJer4QQyRumRi9LD for more information.  This endpoint will return 201 or otherwise 402 if unable to perform the refund.   | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | amount_invalid | The refund amount is greater than the remaining captured total | | invalid_state | 1. The charge is already fully refunded |
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRefundRequest] :body 
    # @option opts [String] :idempotency_key The unique idempotency key.
    # @return [Array<(Refund, Fixnum, Hash)>] Refund data, response status code and response headers
    def refunds_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RefundsApi.refunds_create ..."
      end
      # resource path
      local_var_path = "/refunds".sub('{format}','json')

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
        :return_type => 'Refund')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundsApi#refunds_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List refunds
    # List all refunds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :charge_id 
    # @option opts [Integer] :skip Number of items to skip when paging (default to 0)
    # @option opts [Integer] :limit Number of items to retrieve when paging (default to 100)
    # @return [Array<InlineResponse200>]
    def refunds_list(opts = {})
      data, _status_code, _headers = refunds_list_with_http_info(opts)
      return data
    end

    # List refunds
    # List all refunds
    # @param [Hash] opts the optional parameters
    # @option opts [String] :charge_id 
    # @option opts [Integer] :skip Number of items to skip when paging
    # @option opts [Integer] :limit Number of items to retrieve when paging
    # @return [Array<(Array<InlineResponse200>, Fixnum, Hash)>] Array<InlineResponse200> data, response status code and response headers
    def refunds_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RefundsApi.refunds_list ..."
      end
      # resource path
      local_var_path = "/refunds".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'chargeId'] = opts[:'charge_id'] if !opts[:'charge_id'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/javascript'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/javascript'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Authorization']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<InlineResponse200>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundsApi#refunds_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a refund
    # Retrieves details of a specific refund
    # @param id The id of the refund
    # @param [Hash] opts the optional parameters
    # @return [Refund]
    def refunds_retrieve(id, opts = {})
      data, _status_code, _headers = refunds_retrieve_with_http_info(id, opts)
      return data
    end

    # Retrieve a refund
    # Retrieves details of a specific refund
    # @param id The id of the refund
    # @param [Hash] opts the optional parameters
    # @return [Array<(Refund, Fixnum, Hash)>] Refund data, response status code and response headers
    def refunds_retrieve_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RefundsApi.refunds_retrieve ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling RefundsApi.refunds_retrieve" if id.nil?
      # resource path
      local_var_path = "/refunds/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/javascript'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/javascript'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Authorization']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Refund')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundsApi#refunds_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
