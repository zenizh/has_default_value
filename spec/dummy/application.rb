require 'action_controller/railtie'
require 'active_record'

require 'has_default_value'

module Dummy
  class Application < Rails::Application
    config.secret_token = 'abcdefghijklmnopqrstuvwxyz0123456789'
    config.session_store :cookie_store, key: '_dummy_session'
    config.eager_load = false
    config.active_support.deprecation = :log
    config.i18n.load_path += Dir[Rails.root.join('spec/dummy/config/locales/*.yml')]
  end
end

Dummy::Application.initialize!

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')

class User < ActiveRecord::Base
  has_default_value :name
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name

      t.timestamps null: true
    end
  end
end
