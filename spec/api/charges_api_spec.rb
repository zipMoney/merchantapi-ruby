#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'spec_helper'
require 'json'

# Unit tests for ZipMoney::ChargesApi
# Please update as you see appropriate
describe 'ChargesApi' do
  before do   
    auth = JSON.parse(File.read('./spec/auth.json'))

    ZipMoney.configure do |c|
      c.environment = :sandbox;
      c.host = "api.sandbox.zipmoney.com.au"
      c.api_key['Authorization'] = auth["api_key"];
      c.api_key_prefix['Authorization'] = "Bearer";
      #c.debugging = true;
    end
    @instance = ZipMoney::ChargesApi.new
    @payload_helper = ZipMoney::PayloadHelper.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChargesApi' do
    it 'should create an instact of ChargesApi' do
      expect(@instance).to be_instance_of(ZipMoney::ChargesApi)
    end
  end

  # unit tests for charges_cancel
  # Cancel a charge
  # Cancels an authorised charge.  | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | invalid_state | The charge is not in authorised state |
  # @param id The id of the authorised charge
  # @param [Hash] opts the optional parameters
  # @option opts [String] :idempotency_key The unique idempotency key.
  # @return [Charge]
  describe 'charges_cancel test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for charges_capture
  # Capture a charge
  # | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | amount_invalid | Capture amount greater than authorised amount | | invalid_state | The charge is not in authorised state |
  # @param id The id of the authorised charge
  # @param [Hash] opts the optional parameters
  # @option opts [CaptureChargeRequest] :body 
  # @option opts [String] :idempotency_key The unique idempotency key.
  # @return [Charge]
  describe 'charges_capture test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for charges_create
  # Create a charge
  # Creates a #model:ehEN48PET29iNdex3 which represents a charge against a customer&#39;s account.  To execute this endpoint you must first obtain customer approval by implementing the #docTextSection:43C79g2JjeGs8AHWi as a part of your online store.  This endpoint will return 201 if successful otherwise 402 with a specific error response.  ## Capture or authorisation  A charge can be created as either an authorisation or an immediate capture. This can be controlled in the initial request to the charge.  In most cases you will want to immediately capture the payment, this will mark the debit for settlement into your account the very same day and will immediately deduct the funds from the customer&#39;s account.  In some cases you may wish to delay the settlement of funds until a later date, perhaps until the goods are shipped to the customer. In this scenario you should send { capture: false } in the request to the #endpoint:dtmp3HxaHKjewvvGW endpoint and the charge will be created in an authorised state.  An authorised charge will place a hold for the specified amount on the customer&#39;s account in the form of a pending debit. Once authorised you are guaranteed the funds are available and awaiting a capture request to the #endpoint:wReod3JtbzNutMSXj endpoint, at which point the charge will move to the captured state and the funds will be settled into your account. It is at this point the customer&#39;s interest free period will start if applicable for the selected account.  ## Specific error responses  If a charge was not able to be performed a \&quot;402 - Request Failed\&quot; status code will be returned as detailed in #docTextSection:fJYHM2ZKtEui8RrAM. The error object can contain more specific error reason codes, which are detailed below.  | Error code | Description | |------------------------------------|--------------------------------------------------------------------------------------------------| | account_insufficient_funds | Customer does not have sufficient funds to perform the charge | | account_inoperative | The account is in arrears or closed and cannot be charged | | account_locked | The account is locked | | amount_invalid | The amount provided does not match the approved checkout amount | | fraud_check | Fraud checks resulted in payment failure |
  # @param [Hash] opts the optional parameters
  # @option opts [CreateChargeRequest] :body 
  # @option opts [String] :idempotency_key The unique idempotency key.
  # @return [Charge]
  describe 'charges_create test' do
    it "should work" do
        @checkoutapi = ZipMoney::CheckoutsApi.new
        @payload = @payload_helper.checkout_request;      
        result = @checkoutapi.checkouts_create(@payload);
        @payload = @payload_helper.charge_request;
        #@payload[:idempotency_key] = 1111
        @payload[:body].authority.value = result.id;
      begin
        result = @instance.charges_create(@payload);
      rescue ZipMoney::ApiError => e
        puts e.response_body
      end  
    end
  end

  # unit tests for charges_list
  # List charges
  # Lists all charges matching search criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :state The state filter
  # @option opts [Integer] :skip Number of items to skip when paging
  # @option opts [Integer] :limit Number of items to retrieve when paging
  # @option opts [String] :expand Allows expanding related entities in the response. Only valid entry is &#39;customer&#39;
  # @return [ChargeCollection]
  describe 'charges_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for charges_retrieve
  # Retrieve a charge
  # Retrieve details of a previously created charge.
  # @param id The id of the charge
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand Allows expanding related entities in the response. Only valid entry is &#39;customer&#39;
  # @return [Charge]
  describe 'charges_retrieve test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
