#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require "uri"

module ZipMoney
  class ChargesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Cancel a charge
    # Cancels an authorised charge.  | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | invalid_state | The charge is not in authorised state |
    # @param id The id of the authorised charge
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The unique idempotency key.
    # @return [Charge]
    def charges_cancel(id, opts = {})
      data, _status_code, _headers = charges_cancel_with_http_info(id, opts)
      return data
    end

    # Cancel a charge
    # Cancels an authorised charge.  | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | invalid_state | The charge is not in authorised state |
    # @param id The id of the authorised charge
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key The unique idempotency key.
    # @return [Array<(Charge, Fixnum, Hash)>] Charge data, response status code and response headers
    def charges_cancel_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChargesApi.charges_cancel ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ChargesApi.charges_cancel" if id.nil?
      # resource path
      local_var_path = "/charges/{id}/cancel".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = nil
      auth_names = ['Authorization']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Charge')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChargesApi#charges_cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Capture a charge
    # | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | amount_invalid | Capture amount greater than authorised amount | | invalid_state | The charge is not in authorised state |
    # @param id The id of the authorised charge
    # @param [Hash] opts the optional parameters
    # @option opts [CaptureChargeRequest] :body 
    # @option opts [String] :idempotency_key The unique idempotency key.
    # @return [Charge]
    def charges_capture(id, opts = {})
      data, _status_code, _headers = charges_capture_with_http_info(id, opts)
      return data
    end

    # Capture a charge
    # | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | amount_invalid | Capture amount greater than authorised amount | | invalid_state | The charge is not in authorised state |
    # @param id The id of the authorised charge
    # @param [Hash] opts the optional parameters
    # @option opts [CaptureChargeRequest] :body 
    # @option opts [String] :idempotency_key The unique idempotency key.
    # @return [Array<(Charge, Fixnum, Hash)>] Charge data, response status code and response headers
    def charges_capture_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChargesApi.charges_capture ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ChargesApi.charges_capture" if id.nil?
      # resource path
      local_var_path = "/charges/{id}/capture".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Charge')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChargesApi#charges_capture\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a charge
    # Creates a #model:ehEN48PET29iNdex3 which represents a charge against a customer's account.  To execute this endpoint you must first obtain customer approval by implementing the #docTextSection:43C79g2JjeGs8AHWi as a part of your online store.  This endpoint will return 201 if successful otherwise 402 with a specific error response.  ## Capture or authorisation  A charge can be created as either an authorisation or an immediate capture. This can be controlled in the initial request to the charge.  In most cases you will want to immediately capture the payment, this will mark the debit for settlement into your account the very same day and will immediately deduct the funds from the customer's account.  In some cases you may wish to delay the settlement of funds until a later date, perhaps until the goods are shipped to the customer. In this scenario you should send { capture: false } in the request to the #endpoint:dtmp3HxaHKjewvvGW endpoint and the charge will be created in an authorised state.  An authorised charge will place a hold for the specified amount on the customer's account in the form of a pending debit. Once authorised you are guaranteed the funds are available and awaiting a capture request to the #endpoint:wReod3JtbzNutMSXj endpoint, at which point the charge will move to the captured state and the funds will be settled into your account. It is at this point the customer's interest free period will start if applicable for the selected account.  ## Specific error responses  If a charge was not able to be performed a \"402 - Request Failed\" status code will be returned as detailed in #docTextSection:fJYHM2ZKtEui8RrAM. The error object can contain more specific error reason codes, which are detailed below.  | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | account_insufficient_funds | Customer does not have sufficient funds to perform the charge | | account_inoperative | The account is in arrears or closed and cannot be charged | | account_locked | The account is locked | | amount_invalid | The amount provided does not match the approved checkout amount | | fraud_check | Fraud checks resulted in payment failure |
    # @param [Hash] opts the optional parameters
    # @option opts [CreateChargeRequest] :body 
    # @option opts [String] :idempotency_key The unique idempotency key.
    # @return [Charge]
    def charges_create(opts = {})
      data, _status_code, _headers = charges_create_with_http_info(opts)
      return data
    end

    # Create a charge
    # Creates a #model:ehEN48PET29iNdex3 which represents a charge against a customer&#39;s account.  To execute this endpoint you must first obtain customer approval by implementing the #docTextSection:43C79g2JjeGs8AHWi as a part of your online store.  This endpoint will return 201 if successful otherwise 402 with a specific error response.  ## Capture or authorisation  A charge can be created as either an authorisation or an immediate capture. This can be controlled in the initial request to the charge.  In most cases you will want to immediately capture the payment, this will mark the debit for settlement into your account the very same day and will immediately deduct the funds from the customer&#39;s account.  In some cases you may wish to delay the settlement of funds until a later date, perhaps until the goods are shipped to the customer. In this scenario you should send { capture: false } in the request to the #endpoint:dtmp3HxaHKjewvvGW endpoint and the charge will be created in an authorised state.  An authorised charge will place a hold for the specified amount on the customer&#39;s account in the form of a pending debit. Once authorised you are guaranteed the funds are available and awaiting a capture request to the #endpoint:wReod3JtbzNutMSXj endpoint, at which point the charge will move to the captured state and the funds will be settled into your account. It is at this point the customer&#39;s interest free period will start if applicable for the selected account.  ## Specific error responses  If a charge was not able to be performed a \&quot;402 - Request Failed\&quot; status code will be returned as detailed in #docTextSection:fJYHM2ZKtEui8RrAM. The error object can contain more specific error reason codes, which are detailed below.  | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | account_insufficient_funds | Customer does not have sufficient funds to perform the charge | | account_inoperative | The account is in arrears or closed and cannot be charged | | account_locked | The account is locked | | amount_invalid | The amount provided does not match the approved checkout amount | | fraud_check | Fraud checks resulted in payment failure |
    # @param [Hash] opts the optional parameters
    # @option opts [CreateChargeRequest] :body 
    # @option opts [String] :idempotency_key The unique idempotency key.
    # @return [Array<(Charge, Fixnum, Hash)>] Charge data, response status code and response headers
    def charges_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChargesApi.charges_create ..."
      end
      # resource path
      local_var_path = "/charges".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
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
        :return_type => 'Charge')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChargesApi#charges_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List charges
    # Lists all charges matching search criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state The state filter
    # @option opts [Integer] :skip Number of items to skip when paging (default to 0)
    # @option opts [Integer] :limit Number of items to retrieve when paging (default to 100)
    # @option opts [String] :expand Allows expanding related entities in the response. Only valid entry is &#39;customer&#39;
    # @return [ChargeCollection]
    def charges_list(opts = {})
      data, _status_code, _headers = charges_list_with_http_info(opts)
      return data
    end

    # List charges
    # Lists all charges matching search criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state The state filter
    # @option opts [Integer] :skip Number of items to skip when paging
    # @option opts [Integer] :limit Number of items to retrieve when paging
    # @option opts [String] :expand Allows expanding related entities in the response. Only valid entry is &#39;customer&#39;
    # @return [Array<(ChargeCollection, Fixnum, Hash)>] ChargeCollection data, response status code and response headers
    def charges_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChargesApi.charges_list ..."
      end
      # resource path
      local_var_path = "/charges".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

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
        :return_type => 'ChargeCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChargesApi#charges_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a charge
    # Retrieve details of a previously created charge.
    # @param id The id of the charge
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Allows expanding related entities in the response. Only valid entry is &#39;customer&#39;
    # @return [Charge]
    def charges_retrieve(id, opts = {})
      data, _status_code, _headers = charges_retrieve_with_http_info(id, opts)
      return data
    end

    # Retrieve a charge
    # Retrieve details of a previously created charge.
    # @param id The id of the charge
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Allows expanding related entities in the response. Only valid entry is &#39;customer&#39;
    # @return [Array<(Charge, Fixnum, Hash)>] Charge data, response status code and response headers
    def charges_retrieve_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ChargesApi.charges_retrieve ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ChargesApi.charges_retrieve" if id.nil?
      # resource path
      local_var_path = "/charges/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

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
        :return_type => 'Charge')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChargesApi#charges_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
