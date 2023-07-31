require 'chefspec'
require 'chefspec/berkshelf'

DEBIAN_11 = {
  platform: 'debian',
  version: '11',
}.freeze

DEBIAN_12 = {
  platform: 'debian',
  version: '12',
}.freeze

ALL_PLATFORMS = [
  DEBIAN_11,
  DEBIAN_12,
].freeze

RSpec.configure do |config|
  config.log_level = :warn
end
