#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'date'

module ZipMoney
  # Statistics relating to the shopper
  class ShopperStatistics
    # The time at which the shopper's account was created
    attr_accessor :account_created

    # The total number of separate purchases the shopper has made through the store
    attr_accessor :sales_total_count

    # The total purchase amount of all orders previously captured through the store.
    attr_accessor :sales_total_amount

    # The average value of sales made by the shopper through the store
    attr_accessor :sales_avg_amount

    # The maximum purchase amount the shopper has previously purchased from the store.
    attr_accessor :sales_max_amount

    # The total amount of all refunds linked to this shopper's account
    attr_accessor :refunds_total_amount

    # Has the shopper had a previous chargeback?
    attr_accessor :previous_chargeback

    # The currency of all all amount values
    attr_accessor :currency

    # The date at which the shopper last logged in to your store.
    attr_accessor :last_login

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_created' => :'account_created',
        :'sales_total_count' => :'sales_total_count',
        :'sales_total_amount' => :'sales_total_amount',
        :'sales_avg_amount' => :'sales_avg_amount',
        :'sales_max_amount' => :'sales_max_amount',
        :'refunds_total_amount' => :'refunds_total_amount',
        :'previous_chargeback' => :'previous_chargeback',
        :'currency' => :'currency',
        :'last_login' => :'last_login'
      }
    end

    # Attribute type mapping.
    def self.zip_types
      {
        :'account_created' => :'DateTime',
        :'sales_total_count' => :'Integer',
        :'sales_total_amount' => :'Float',
        :'sales_avg_amount' => :'Float',
        :'sales_max_amount' => :'Float',
        :'refunds_total_amount' => :'Float',
        :'previous_chargeback' => :'BOOLEAN',
        :'currency' => :'String',
        :'last_login' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'account_created')
        self.account_created = attributes[:'account_created']
      end

      if attributes.has_key?(:'sales_total_count')
        self.sales_total_count = attributes[:'sales_total_count']
      end

      if attributes.has_key?(:'sales_total_amount')
        self.sales_total_amount = attributes[:'sales_total_amount']
      end

      if attributes.has_key?(:'sales_avg_amount')
        self.sales_avg_amount = attributes[:'sales_avg_amount']
      end

      if attributes.has_key?(:'sales_max_amount')
        self.sales_max_amount = attributes[:'sales_max_amount']
      end

      if attributes.has_key?(:'refunds_total_amount')
        self.refunds_total_amount = attributes[:'refunds_total_amount']
      end

      if attributes.has_key?(:'previous_chargeback')
        self.previous_chargeback = attributes[:'previous_chargeback']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'last_login')
        self.last_login = attributes[:'last_login']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      currency_validator = EnumAttributeValidator.new('String', ["AUD", "NZD"])
      return false unless currency_validator.valid?(@currency)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency)
      validator = EnumAttributeValidator.new('String', ["AUD", "NZD"])
      unless validator.valid?(currency)
        fail ArgumentError, "invalid value for 'currency', must be one of #{validator.allowable_values}."
      end
      @currency = currency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_created == o.account_created &&
          sales_total_count == o.sales_total_count &&
          sales_total_amount == o.sales_total_amount &&
          sales_avg_amount == o.sales_avg_amount &&
          sales_max_amount == o.sales_max_amount &&
          refunds_total_amount == o.refunds_total_amount &&
          previous_chargeback == o.previous_chargeback &&
          currency == o.currency &&
          last_login == o.last_login
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_created, sales_total_count, sales_total_amount, sales_avg_amount, sales_max_amount, refunds_total_amount, previous_chargeback, currency, last_login].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.zip_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = ZipMoney.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
