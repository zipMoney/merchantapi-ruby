#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'date'

module ZipMoney

  class CreateRefundRequest
    # The id relating to the original charge that is to be refunded
    attr_accessor :charge_id

    # The reason for the refund
    attr_accessor :reason

    # The amount to refund, can be less than or equal to the previously captured amount
    attr_accessor :amount

    # Additional metadata if required
    attr_accessor :metadata


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'charge_id' => :'charge_id',
        :'reason' => :'reason',
        :'amount' => :'amount',
        :'metadata' => :'metadata'
      }
    end

    # Attribute type mapping.
    def self.zip_types
      {
        :'charge_id' => :'String',
        :'reason' => :'String',
        :'amount' => :'Float',
        :'metadata' => :'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'charge_id')
        self.charge_id = attributes[:'charge_id']
      end

      if attributes.has_key?(:'reason')
        self.reason = attributes[:'reason']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @charge_id.nil?
        invalid_properties.push("invalid value for 'charge_id', charge_id cannot be nil.")
      end

      if @reason.nil?
        invalid_properties.push("invalid value for 'reason', reason cannot be nil.")
      end

      if @amount.nil?
        invalid_properties.push("invalid value for 'amount', amount cannot be nil.")
      end

      if @amount < 0
        invalid_properties.push("invalid value for 'amount', must be greater than or equal to 0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @charge_id.nil?
      return false if @reason.nil?
      return false if @amount.nil?
      return false if @amount < 0
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      if amount.nil?
        fail ArgumentError, "amount cannot be nil"
      end

      if amount < 0
        fail ArgumentError, "invalid value for 'amount', must be greater than or equal to 0."
      end

      @amount = amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          charge_id == o.charge_id &&
          reason == o.reason &&
          amount == o.amount &&
          metadata == o.metadata
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [charge_id, reason, amount, metadata].hash
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
