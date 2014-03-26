require 'chefspec'
require 'chefspec/librarian'

RSpec.configure do |config|
  config.platform = 'ubuntu'
  config.version = '12.04'
end
