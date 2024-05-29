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
  class Comment1
    # Unique ID of the comment.
    attr_accessor :id

    # Object creation time (UTC date and time in ISO 8601 format)
    attr_accessor :created_at

    # Object updation time (UTC date and time in ISO 8601 format)
    attr_accessor :updated_at

    # Publishing timestamp of the comment.
    attr_accessor :published_at

    attr_accessor :user

    attr_accessor :account

    attr_accessor :work_platform

    attr_accessor :content

    # Unique comment ID on the platform.
    attr_accessor :external_id

    # Text content of the comment.
    attr_accessor :text

    # Commenter profile username.
    attr_accessor :commenter_username

    # Full display name of the commenter profile.
    attr_accessor :commenter_display_name

    # Unique identifier for the commenter's profile on the platform.
    attr_accessor :commenter_id

    # Commenter's profile URL on the connected platform.
    attr_accessor :commenter_profile_url

    # Total likes.
    attr_accessor :like_count

    # Total replies.
    attr_accessor :reply_count

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'published_at' => :'published_at',
        :'user' => :'user',
        :'account' => :'account',
        :'work_platform' => :'work_platform',
        :'content' => :'content',
        :'external_id' => :'external_id',
        :'text' => :'text',
        :'commenter_username' => :'commenter_username',
        :'commenter_display_name' => :'commenter_display_name',
        :'commenter_id' => :'commenter_id',
        :'commenter_profile_url' => :'commenter_profile_url',
        :'like_count' => :'like_count',
        :'reply_count' => :'reply_count'
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
        :'published_at' => :'Time',
        :'user' => :'UserAttribute1',
        :'account' => :'AccountAttribute1',
        :'work_platform' => :'WorkPlatformAttribute1',
        :'content' => :'ContentAttribute1',
        :'external_id' => :'String',
        :'text' => :'String',
        :'commenter_username' => :'String',
        :'commenter_display_name' => :'String',
        :'commenter_id' => :'String',
        :'commenter_profile_url' => :'String',
        :'like_count' => :'Integer',
        :'reply_count' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'commenter_profile_url',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Phyllo::Comment1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Phyllo::Comment1`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'published_at')
        self.published_at = attributes[:'published_at']
      else
        self.published_at = nil
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

      if attributes.key?(:'content')
        self.content = attributes[:'content']
      else
        self.content = nil
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      else
        self.external_id = nil
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'commenter_username')
        self.commenter_username = attributes[:'commenter_username']
      end

      if attributes.key?(:'commenter_display_name')
        self.commenter_display_name = attributes[:'commenter_display_name']
      end

      if attributes.key?(:'commenter_id')
        self.commenter_id = attributes[:'commenter_id']
      end

      if attributes.key?(:'commenter_profile_url')
        self.commenter_profile_url = attributes[:'commenter_profile_url']
      end

      if attributes.key?(:'like_count')
        self.like_count = attributes[:'like_count']
      end

      if attributes.key?(:'reply_count')
        self.reply_count = attributes[:'reply_count']
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

      if @published_at.nil?
        invalid_properties.push('invalid value for "published_at", published_at cannot be nil.')
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

      if @content.nil?
        invalid_properties.push('invalid value for "content", content cannot be nil.')
      end

      if @external_id.nil?
        invalid_properties.push('invalid value for "external_id", external_id cannot be nil.')
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
      return false if @published_at.nil?
      return false if @user.nil?
      return false if @account.nil?
      return false if @work_platform.nil?
      return false if @content.nil?
      return false if @external_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          published_at == o.published_at &&
          user == o.user &&
          account == o.account &&
          work_platform == o.work_platform &&
          content == o.content &&
          external_id == o.external_id &&
          text == o.text &&
          commenter_username == o.commenter_username &&
          commenter_display_name == o.commenter_display_name &&
          commenter_id == o.commenter_id &&
          commenter_profile_url == o.commenter_profile_url &&
          like_count == o.like_count &&
          reply_count == o.reply_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, updated_at, published_at, user, account, work_platform, content, external_id, text, commenter_username, commenter_display_name, commenter_id, commenter_profile_url, like_count, reply_count].hash
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
