=begin
#API References

#The **Phyllo API** is built on RESTful principles and returns JSON encoded responses and accepts JSON payloads. It is only available through HTTPS to ensure the security of the data in transfer. These APIs must be called only from your server and never from your app / frontend as this is a security concern.  The API operates in three environments: **sandbox**, **staging** and **production**.  The sandbox environment returns mock data and is used for testing the basic functionality of the system.  The staging environment is exactly like a production environment but with certain limitations. It is used for your internal testing and development purposes.  The production environment connects to real platform accounts and all data reads and writes are made to live accounts. This is what you would use to get data for your customers.

The version of the OpenAPI document: v1.0
Contact: support@getphyllo.com
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'date'
require 'time'

module Phyllo
  # 
  class CommerceTransaction
    # Unique ID of the transaction.
    attr_accessor :id

    # Object creation time (UTC date and time in ISO 8601 format)
    attr_accessor :created_at

    # Object updation time (UTC date and time in ISO 8601 format)
    attr_accessor :updated_at

    attr_accessor :user

    attr_accessor :account

    attr_accessor :work_platform

    # Amount for the given transaction
    attr_accessor :amount

    # 3 letter currency code as per ISO 4217
    attr_accessor :currency

    # Type of the transaction
    attr_accessor :type

    # Status of the transaction on the source platform
    attr_accessor :status

    # Transaction ID given by the source platform
    attr_accessor :external_id

    # Date or timestamp of transaction
    attr_accessor :transaction_at

    # Unique profile ID of the user on the work platform.   Ex - For YouTube it's the channel ID and for Instagram it's the Instagram page ID.
    attr_accessor :platform_profile_id

    # User's profile name on the work platform. This is not unique, is displayed prominently on the profile, usually editable and is most commonly associated with that user's identity on the platform.  Ex - For YouTube, it's the channel name displayed on the channel page and for Instagram / Twitter / TikTok etc, it's the name displayed on the user's profile page.
    attr_accessor :platform_profile_name

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
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'user' => :'user',
        :'account' => :'account',
        :'work_platform' => :'work_platform',
        :'amount' => :'amount',
        :'currency' => :'currency',
        :'type' => :'type',
        :'status' => :'status',
        :'external_id' => :'external_id',
        :'transaction_at' => :'transaction_at',
        :'platform_profile_id' => :'platform_profile_id',
        :'platform_profile_name' => :'platform_profile_name'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'user' => :'UserAttribute1',
        :'account' => :'AccountAttribute1',
        :'work_platform' => :'WorkPlatformAttribute1',
        :'amount' => :'Float',
        :'currency' => :'String',
        :'type' => :'String',
        :'status' => :'String',
        :'external_id' => :'String',
        :'transaction_at' => :'Time',
        :'platform_profile_id' => :'String',
        :'platform_profile_name' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'external_id',
        :'platform_profile_name'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phyllo::CommerceTransaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phyllo::CommerceTransaction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      else
        self.updated_at = nil
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      else
        self.user = nil
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      else
        self.account = nil
      end

      if attributes.key?(:'work_platform')
        self.work_platform = attributes[:'work_platform']
      else
        self.work_platform = nil
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      else
        self.amount = nil
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      else
        self.external_id = nil
      end

      if attributes.key?(:'transaction_at')
        self.transaction_at = attributes[:'transaction_at']
      else
        self.transaction_at = nil
      end

      if attributes.key?(:'platform_profile_id')
        self.platform_profile_id = attributes[:'platform_profile_id']
      else
        self.platform_profile_id = nil
      end

      if attributes.key?(:'platform_profile_name')
        self.platform_profile_name = attributes[:'platform_profile_name']
      else
        self.platform_profile_name = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @user.nil?
        invalid_properties.push('invalid value for "user", user cannot be nil.')
      end

      if @account.nil?
        invalid_properties.push('invalid value for "account", account cannot be nil.')
      end

      if @work_platform.nil?
        invalid_properties.push('invalid value for "work_platform", work_platform cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @transaction_at.nil?
        invalid_properties.push('invalid value for "transaction_at", transaction_at cannot be nil.')
      end

      if @platform_profile_id.nil?
        invalid_properties.push('invalid value for "platform_profile_id", platform_profile_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @user.nil?
      return false if @account.nil?
      return false if @work_platform.nil?
      return false if @amount.nil?
      return false if @currency.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["SALE", "REFUND", "CANCELLED", "VOID", "OTHER"])
      return false unless type_validator.valid?(@type)
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["SUCCESS", "FAILURE", "PENDING", "OTHER"])
      return false unless status_validator.valid?(@status)
      return false if @transaction_at.nil?
      return false if @platform_profile_id.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["SALE", "REFUND", "CANCELLED", "VOID", "OTHER"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["SUCCESS", "FAILURE", "PENDING", "OTHER"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          user == o.user &&
          account == o.account &&
          work_platform == o.work_platform &&
          amount == o.amount &&
          currency == o.currency &&
          type == o.type &&
          status == o.status &&
          external_id == o.external_id &&
          transaction_at == o.transaction_at &&
          platform_profile_id == o.platform_profile_id &&
          platform_profile_name == o.platform_profile_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, updated_at, user, account, work_platform, amount, currency, type, status, external_id, transaction_at, platform_profile_id, platform_profile_name].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = Phyllo.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
        value.compact.map { |v| _to_hash(v) }
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
