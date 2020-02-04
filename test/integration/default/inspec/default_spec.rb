describe apt('https://ftp.osuosl.org/pub/osl/repos/apt/') do
  it { should exist }
  it { should be_enabled }
end
