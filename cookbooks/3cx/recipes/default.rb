#
# Cookbook:: 3cx
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# apt-get update
apt_update

# Upgrading the system will be discarded
# apt-get -y safe-upgrade

# Add repsoitry to apt-get
# wget -O- http://downloads-global.3cx.com/downloads/3cxpbx/public.key | apt-key add -
# echo "deb http://downloads-global.3cx.com/downloads/debian stretch main" | tee /etc/apt/sources.list.d/3cxpbx.list
apt_repository '3cxpbx' do
  uri 'http://downloads-global.3cx.com/downloads/debian'
  distribution 'stretch main'
  key 'http://downloads-global.3cx.com/downloads/3cxpbx/public.key'
  cache_rebuild true
  action :add
end

# Create configuration file directory
directory '/etc/3cxpbx'

# Download the setup file
remote_file '/etc/3cxpbx/setupconfig.xml' do
  source node['TCXSetupURL']
  action :create
end

# apt-get install -y net-tools 3cxpbx
package '3cxpbx'
package 'net-tools'
