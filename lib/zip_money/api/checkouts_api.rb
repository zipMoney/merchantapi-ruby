#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require "uri"

module ZipMoney
  class CheckoutsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a checkout
    # Creates a zipMoney checkout.  During the checkout process a customer can apply for credit decisioning in real-time. This means the checkout needs to represent a good picture of known customer details along with order information and the checkout entity represents this as a resource.  For more information on how to checkout with zipMoney see the #model:Z2QcrzRGHACY8wM6G guide.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCheckoutRequest] :body 
    # @return [Checkout]
    def checkouts_create(opts = {})
      data, _status_code, _headers = checkouts_create_with_http_info(opts)
      return data
    end

    # Create a checkout
    # Creates a zipMoney checkout.  During the checkout process a customer can apply for credit decisioning in real-time. This means the checkout needs to represent a good picture of known customer details along with order information and the checkout entity represents this as a resource.  For more information on how to checkout with zipMoney see the #model:Z2QcrzRGHACY8wM6G guide.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCheckoutRequest] :body 
    # @return [Array<(Checkout, Fixnum, Hash)>] Checkout data, response status code and response headers
    def checkouts_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CheckoutsApi.checkouts_create ..."
      end
      # resource path
      local_var_path = "/checkouts".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        :return_type => 'Checkout')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckoutsApi#checkouts_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a checkout
    # Retrieves a previously created checkout by id.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Checkout]
    def checkouts_get(id, opts = {})
      data, _status_code, _headers = checkouts_get_with_http_info(id, opts)
      return data
    end

    # Retrieve a checkout
    # Retrieves a previously created checkout by id.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Checkout, Fixnum, Hash)>] Checkout data, response status code and response headers
    def checkouts_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CheckoutsApi.checkouts_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling CheckoutsApi.checkouts_get" if id.nil?
      # resource path
      local_var_path = "/checkouts/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        :return_type => 'Checkout')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CheckoutsApi#checkouts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
