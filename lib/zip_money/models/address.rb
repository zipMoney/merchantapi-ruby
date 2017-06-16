#Merchant API 
#ZipMoney Merchant API Initial build
#zipMoney Merchant API version: 2017-03-01


require 'date'

module ZipMoney
  # The address object
  class Address
    # The first line in the address
    attr_accessor :line1

    # The (optional) second address line
    attr_accessor :line2

    # The address city
    attr_accessor :city

    # The state or province
    attr_accessor :state

    # The post or zip code
    attr_accessor :postal_code

    # The ISO-3166 country code. See https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2.
    attr_accessor :country

    # The recipient's first name
    attr_accessor :first_name

    # The recipient's last name
    attr_accessor :last_name


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'line1' => :'line1',
        :'line2' => :'line2',
        :'city' => :'city',
        :'state' => :'state',
        :'postal_code' => :'postal_code',
        :'country' => :'country',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'line1' => :'String',
        :'line2' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'postal_code' => :'String',
        :'country' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'line1')
        self.line1 = attributes[:'line1']
      end

      if attributes.has_key?(:'line2')
        self.line2 = attributes[:'line2']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.has_key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @line1.nil?
        invalid_properties.push("invalid value for 'line1', line1 cannot be nil.")
      end

      if @line1.to_s.length > 200
        invalid_properties.push("invalid value for 'line1', the character length must be smaller than or equal to 200.")
      end

      if !@line2.nil? && @line2.to_s.length > 200
        invalid_properties.push("invalid value for 'line2', the character length must be smaller than or equal to 200.")
      end

      if @city.nil?
        invalid_properties.push("invalid value for 'city', city cannot be nil.")
      end

      if @city.to_s.length > 50
        invalid_properties.push("invalid value for 'city', the character length must be smaller than or equal to 50.")
      end

      if @state.nil?
        invalid_properties.push("invalid value for 'state', state cannot be nil.")
      end

      if @state.to_s.length > 50
        invalid_properties.push("invalid value for 'state', the character length must be smaller than or equal to 50.")
      end

      if @postal_code.nil?
        invalid_properties.push("invalid value for 'postal_code', postal_code cannot be nil.")
      end

      if @postal_code.to_s.length > 15
        invalid_properties.push("invalid value for 'postal_code', the character length must be smaller than or equal to 15.")
      end

      if @country.nil?
        invalid_properties.push("invalid value for 'country', country cannot be nil.")
      end

      if @country.to_s.length > 2
        invalid_properties.push("invalid value for 'country', the character length must be smaller than or equal to 2.")
      end

      if @country.to_s.length < 2
        invalid_properties.push("invalid value for 'country', the character length must be great than or equal to 2.")
      end

      if !@first_name.nil? && @first_name.to_s.length > 200
        invalid_properties.push("invalid value for 'first_name', the character length must be smaller than or equal to 200.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @line1.nil?
      return false if @line1.to_s.length > 200
      return false if !@line2.nil? && @line2.to_s.length > 200
      return false if @city.nil?
      return false if @city.to_s.length > 50
      return false if @state.nil?
      return false if @state.to_s.length > 50
      return false if @postal_code.nil?
      return false if @postal_code.to_s.length > 15
      return false if @country.nil?
      return false if @country.to_s.length > 2
      return false if @country.to_s.length < 2
      return false if !@first_name.nil? && @first_name.to_s.length > 200
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] line1 Value to be assigned
    def line1=(line1)
      if line1.nil?
        fail ArgumentError, "line1 cannot be nil"
      end

      if line1.to_s.length > 200
        fail ArgumentError, "invalid value for 'line1', the character length must be smaller than or equal to 200."
      end

      @line1 = line1
    end

    # Custom attribute writer method with validation
    # @param [Object] line2 Value to be assigned
    def line2=(line2)

      if !line2.nil? && line2.to_s.length > 200
        fail ArgumentError, "invalid value for 'line2', the character length must be smaller than or equal to 200."
      end

      @line2 = line2
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if city.nil?
        fail ArgumentError, "city cannot be nil"
      end

      if city.to_s.length > 50
        fail ArgumentError, "invalid value for 'city', the character length must be smaller than or equal to 50."
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] state Value to be assigned
    def state=(state)
      if state.nil?
        fail ArgumentError, "state cannot be nil"
      end

      if state.to_s.length > 50
        fail ArgumentError, "invalid value for 'state', the character length must be smaller than or equal to 50."
      end

      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      if postal_code.nil?
        fail ArgumentError, "postal_code cannot be nil"
      end

      if postal_code.to_s.length > 15
        fail ArgumentError, "invalid value for 'postal_code', the character length must be smaller than or equal to 15."
      end

      @postal_code = postal_code
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if country.nil?
        fail ArgumentError, "country cannot be nil"
      end

      if country.to_s.length > 2
        fail ArgumentError, "invalid value for 'country', the character length must be smaller than or equal to 2."
      end

      if country.to_s.length < 2
        fail ArgumentError, "invalid value for 'country', the character length must be great than or equal to 2."
      end

      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)

      if !first_name.nil? && first_name.to_s.length > 200
        fail ArgumentError, "invalid value for 'first_name', the character length must be smaller than or equal to 200."
      end

      @first_name = first_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          line1 == o.line1 &&
          line2 == o.line2 &&
          city == o.city &&
          state == o.state &&
          postal_code == o.postal_code &&
          country == o.country &&
          first_name == o.first_name &&
          last_name == o.last_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [line1, line2, city, state, postal_code, country, first_name, last_name].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
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
