require 'chefspec'
require 'chefspec/berkshelf'

DEBIAN_11 = {
  platform: 'debian',
  version: '11',
}.freeze

ALL_PLATFORMS = [
  DEBIAN_11,
].freeze

RSpec.configure do |config|
  config.log_level = :warn
end
