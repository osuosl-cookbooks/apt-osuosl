require 'chefspec'
require 'chefspec/berkshelf'

DEBIAN_9 = {
  platform: 'debian',
  version: '9',
}.freeze

DEBIAN_10 = {
  platform: 'debian',
  version: '10',
}.freeze

ALL_PLATFORMS = [
  DEBIAN_9,
  DEBIAN_10,
].freeze

RSpec.configure do |config|
  config.log_level = :warn
end
