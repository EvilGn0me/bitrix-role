require 'rspec'
require 'serverspec'
require 'yaml'

set :backend, :exec
conf = YAML.load_file('../defaults/main.yml')
sys = YAML.load_file('../vars/main.yml')

port = '80'
services = sys["bitrix_vars"]["services"]

describe port(port) do
  it { should be_listening }
end

services.each do |service|
  describe service(service), :if => os[:family] == 'redhat' do
      it { should be_enabled }
      it { should be_running }
  end
end

describe user(conf["nginx"]["user"]) do
  it { should have_login_shell conf["nginx"]["user_shell"]}
end

describe file(conf["php"]["fpm_socket"]) do
  it { should be_socket }
end

describe file(conf["php"]["session"]) do
  it { should be_directory }
end
