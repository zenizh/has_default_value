require 'rails'

module HasDefaultValue
  class Railtie < Rails::Railtie
    initializer 'has_default_value' do |app|
      ActiveSupport.on_load :active_record do
        include HasDefaultValue::Base
      end
    end
  end
end
