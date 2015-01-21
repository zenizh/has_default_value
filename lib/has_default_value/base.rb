require 'caller_class'

module HasDefaultValue
  module Base
    def self.included(klass)
      klass.extend ClassMethods
    end

    module ClassMethods
      include CallerClass

      def has_default_value(*columns)
        columns.each do |column|
          caller_class.constantize.class_eval <<-RUBY
            def #{column}
              super.present? ? super : I18n.t('activerecord.defaults.#{caller_class.downcase}.#{column}')
            end
          RUBY
        end
      end
    end
  end
end
