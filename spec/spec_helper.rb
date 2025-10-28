require 'chefspec'
require 'chefspec/berkshelf'

DEBIAN_12 = {
  platform: 'debian',
  version: '12',
}.freeze

DEBIAN_13 = {
  platform: 'debian',
  version: '13',
}.freeze

UBUNTU_2404 = {
  platform: 'ubuntu',
  version: '24.04',
}.freeze

ALL_PLATFORMS = [
  DEBIAN_12,
  DEBIAN_13,
  UBUNTU_2404,
].freeze

RSpec.configure do |config|
  config.log_level = :warn
end
