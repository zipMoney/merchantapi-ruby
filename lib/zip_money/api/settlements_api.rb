#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require "uri"

module ZipMoney
  class SettlementsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Retrieve a settlement
    # Retrieves the full transactional details of a settlement.
    # @param id The settlement id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def settlements_get(id, opts = {})
      settlements_get_with_http_info(id, opts)
      return nil
    end

    # Retrieve a settlement
    # Retrieves the full transactional details of a settlement.
    # @param id The settlement id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def settlements_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SettlementsApi.settlements_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SettlementsApi.settlements_get" if id.nil?
      # resource path
      local_var_path = "/settlements/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettlementsApi#settlements_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List settlements
    # This endpoint will allow a merchant to view the settlements which have occured. To view detailed transaction information for a specific settlement you can use the Retrieve a settlement endpoint.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def settlements_list(opts = {})
      settlements_list_with_http_info(opts)
      return nil
    end

    # List settlements
    # This endpoint will allow a merchant to view the settlements which have occured. To view detailed transaction information for a specific settlement you can use the Retrieve a settlement endpoint.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def settlements_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SettlementsApi.settlements_list ..."
      end
      # resource path
      local_var_path = "/settlements".sub('{format}','json')

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SettlementsApi#settlements_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
