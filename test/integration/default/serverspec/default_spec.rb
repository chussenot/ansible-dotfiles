require 'serverspec'

set :backend, :exec

['bash'].each do |pkg|
  describe package(pkg) do
    it { is_expected.to be_installed }
  end
end
