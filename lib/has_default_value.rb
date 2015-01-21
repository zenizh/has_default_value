require 'has_default_value/version'
require 'has_default_value/railtie' if defined?(Rails)

module HasDefaultValue
  autoload :Base, 'has_default_value/base'
end
