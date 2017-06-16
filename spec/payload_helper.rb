#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01

module ZipMoney
  class PayloadHelper

    def checkout_request
      @checkoutReq = ZipMoney::CreateCheckoutRequest.new
      
      @checkoutReq.config = ZipMoney::CheckoutConfiguration.new;
      @checkoutReq.config.redirect_uri = "http://zipmoney.com.au";

      @checkoutReq.shopper = shopper;
      @checkoutReq.order = checkout_order;
      
      opt = {:body => @checkoutReq};
    end

    def charge_request
      @chargeReq = ZipMoney::CreateChargeRequest.new
      
      
      @chargeReq.amount = 100.55;
      @chargeReq.order = charge_order;
      @chargeReq.currency = "AUD";
      @chargeReq.capture =  true;

      @chargeReq.authority = ZipMoney::Authority.new;
      @chargeReq.authority.type = "checkout_id";
      @chargeReq.authority.value = "123456";

      opt = {:body => @chargeReq};
    end 


    def shopper      
      @shopper = ZipMoney::Shopper.new;      
      @shopper.title = "Mr";
      @shopper.first_name = "zipMoney";
      @shopper.last_name = "Test";
      #@shopper.phone = "0400000000";
      @shopper.email = "test93@mailinator.com";
      
      @shopper.billing_address = ZipMoney::Address.new;

      @shopper.billing_address.first_name = "zipMoney";
      @shopper.billing_address.last_name = "Test";
      @shopper.billing_address.line1 = "37/50 Bridge Street";
      @shopper.billing_address.city = "Sydney";
      @shopper.billing_address.state = "NSW";
      @shopper.billing_address.postal_code = "2000";
      @shopper.billing_address.country = "AU";
      @shopper
    end  

    def checkout_order
      @order = ZipMoney::CheckoutOrder.new;      

      @order.reference = "12345";
      @order.amount = 100.55;
      @order.currency = "AUD";
      @order.cart_reference = "0123";
      @order.shipping = shipping;
      
      @order
    end 

    def charge_order
      @order = ZipMoney::ChargeOrder.new;      

      @order.reference = "12345";
      @order.cart_reference = "0123";
      @order.shipping = shipping;
      
      @order
    end

    def shipping
      @shipping = ZipMoney::OrderShipping.new;
      @shipping.pickup = false;

      @shipping.address = ZipMoney::Address.new;
      @shipping.address.first_name = "zipMoney";
      @shipping.address.last_name = "Test";
      @shipping.address.line1 = "37/50 Bridge Street";
      @shipping.address.city = "Sydney";
      @shipping.address.state = "NSW";
      @shipping.address.postal_code = "2000";
      @shipping.address.country = "AU";
      @shipping
    end


  end
end
