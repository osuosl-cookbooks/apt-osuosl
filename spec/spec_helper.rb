require 'chefspec'
require 'chefspec/berkshelf'

DEBIAN_12 = {
  platform: 'debian',
  version: '12',
}.freeze

ALL_PLATFORMS = [
  DEBIAN_12,
].freeze

RSpec.configure do |config|
  config.log_level = :warn
end
