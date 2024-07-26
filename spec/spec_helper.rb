require 'chefspec'
require 'chefspec/berkshelf'

DEBIAN_12 = {
  platform: 'debian',
  version: '12',
}.freeze

UBUNTU_2404 = {
  platform: 'ubuntu',
  version: '24.04',
}.freeze

ALL_PLATFORMS = [
  DEBIAN_12,
  UBUNTU_2404,
].freeze

RSpec.configure do |config|
  config.log_level = :warn
end
