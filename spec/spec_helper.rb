require 'dummy/application'

require 'rspec/rails'

RSpec.configure do |config|
  config.before :all do
    CreateUsers.new.change unless ActiveRecord::Base.connection.table_exists? 'users'
  end

  config.before :each do
    User.delete_all
  end
end
