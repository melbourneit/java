#
# Author:: Kendrick Martin (<kendrick.martin@webtrends.com>)
# Cookbook Name:: java
# Recipe:: windows
#
# Copyright 2008-2012 Webtrends, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#require 'uri'

Chef::Log.fatal("No download url set for java installer.") unless node['java'] && node['java']['windows'] && node['java']['windows']['url']

windows_package "Java" do
  source 'https://s3-ap-southeast-2.amazonaws.com/java-installer/jre-7u71-windows-x64.exe' 
  options '/s'
  action :install 
end
