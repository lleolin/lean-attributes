module Lean
  module Attributes
    # Incredibly straightforward methods that coerce some types into other
    # common types. You may find that you need to override these methods,
    # depending on your use case.
    #
    # @since 0.1.0
    # @api private
    module CoercionHelpers
      # Method body strings used to precompile `coerce_<attribute>` methods
      #
      # @since 0.2.0
      #
      # @see .method_body_for_type
      # @see Attribute#coercion_method
      METHOD_BODIES = {
        Array:      'Array(value)',
        BigDecimal: 'BigDecimal.new(value, 0)',
        Boolean:    'value ? true : false',
        Date:       'Date.parse(value)',
        DateTime:   'DateTime.parse(value)',
        Float:      'value.to_f',
        Integer:    'value.to_i',
        String:     'value.to_s',
        Symbol:     'value.to_s.to_sym',
        Time:       'Time.parse(value).utc'
      }.freeze

      # Fetches or generates the method body for coercing a value to this type
      #
      # @param [Symbol] type based on class name e.g. `:DateTime`
      # @return [String] method body for coercion to type
      #
      # @since 0.2.0
      #
      # @see Attribute#coercion_method
      def self.method_body_for_type(type)
        METHOD_BODIES[type] || "#{type}.new(value)"
      end
    end
  end
end
