#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'date'

module ZipMoney
  # The shopper details
  class Shopper
    # The shopper's title
    attr_accessor :title

    # The shopper's first name
    attr_accessor :first_name

    # The shopper's last name
    attr_accessor :last_name

    # The shopper's middle name
    attr_accessor :middle_name

    # The shopper's contact phone number
    attr_accessor :phone

    # The shopper's email address
    attr_accessor :email

    # The shopper's birth date in the form yyyy-mm-dd
    attr_accessor :birth_date

    # The shopper's gender
    attr_accessor :gender

    attr_accessor :statistics

    attr_accessor :billing_address

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
        :'title' => :'title',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'middle_name' => :'middle_name',
        :'phone' => :'phone',
        :'email' => :'email',
        :'birth_date' => :'birth_date',
        :'gender' => :'gender',
        :'statistics' => :'statistics',
        :'billing_address' => :'billing_address'
      }
    end

    # Attribute type mapping.
    def self.zip_types
      {
        :'title' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'middle_name' => :'String',
        :'phone' => :'String',
        :'email' => :'String',
        :'birth_date' => :'Date',
        :'gender' => :'String',
        :'statistics' => :'ShopperStatistics',
        :'billing_address' => :'Address'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.has_key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.has_key?(:'middle_name')
        self.middle_name = attributes[:'middle_name']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'birth_date')
        self.birth_date = attributes[:'birth_date']
      end

      if attributes.has_key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.has_key?(:'statistics')
        self.statistics = attributes[:'statistics']
      end

      if attributes.has_key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @first_name.nil?
        invalid_properties.push("invalid value for 'first_name', first_name cannot be nil.")
      end

      if @last_name.nil?
        invalid_properties.push("invalid value for 'last_name', last_name cannot be nil.")
      end

      if !@phone.nil? && @phone !~ Regexp.new(/^\\+?[\\d\\s]+$/)
        invalid_properties.push("invalid value for 'phone', must conform to the pattern /^\\+?[\\d\\s]+$/.")
      end

      if @email.nil?
        invalid_properties.push("invalid value for 'email', email cannot be nil.")
      end

      if @billing_address.nil?
        invalid_properties.push("invalid value for 'billing_address', billing_address cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @first_name.nil?
      return false if @last_name.nil?
      return false if !@phone.nil? && @phone !~ Regexp.new(/^\\+?[\\d\\s]+$/)
      return false if @email.nil?
      gender_validator = EnumAttributeValidator.new('String', ["Male", "Female", "Other"])
      return false unless gender_validator.valid?(@gender)
      return false if @billing_address.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)

      if !phone.nil? && phone !~ Regexp.new(/^\\+?[\\d\\s]+$/)
        fail ArgumentError, "invalid value for 'phone', must conform to the pattern /^\\+?[\\d\\s]+$/."
      end

      @phone = phone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gender Object to be assigned
    def gender=(gender)
      validator = EnumAttributeValidator.new('String', ["Male", "Female", "Other"])
      unless validator.valid?(gender)
        fail ArgumentError, "invalid value for 'gender', must be one of #{validator.allowable_values}."
      end
      @gender = gender
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          title == o.title &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          middle_name == o.middle_name &&
          phone == o.phone &&
          email == o.email &&
          birth_date == o.birth_date &&
          gender == o.gender &&
          statistics == o.statistics &&
          billing_address == o.billing_address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [title, first_name, last_name, middle_name, phone, email, birth_date, gender, statistics, billing_address].hash
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
