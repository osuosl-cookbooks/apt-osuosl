require_relative 'spec_helper'

describe 'apt-osuosl::default' do
  ALL_PLATFORMS.each do |p|
    context "#{p[:platform]} #{p[:version]}" do
      cached(:chef_run) do
        ChefSpec::SoloRunner.new(p).converge(described_recipe)
      end
      it 'converges successfully' do
        expect { chef_run }.to_not raise_error
      end
      it do
        expect(chef_run).to add_apt_repository('osuosl').with(
          uri: 'https://ftp.osuosl.org/pub/osl/repos/apt/',
          components: %w(main),
          key: %w(https://ftp.osuosl.org/pub/osl/repos/apt/repo.gpg),
          arch: 'amd64'
        )
      end
    end
  end
end
