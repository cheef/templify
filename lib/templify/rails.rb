module Templify::Rails
  def templify column, template_klass
    class_eval <<-METHODS, __FILE__, __LINE__ + 1
      def #{column}
        value = super

        if value.is_a? #{template_klass}
          value
        else
          write_attribute :#{column}, #{template_klass}.new(value)
        end
      end

      def #{column}= value
        super #{template_klass}.new value
      end
    METHODS
  end
end