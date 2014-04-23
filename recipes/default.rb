#
# Cookbook Name:: cakephp
# Recipe:: default
#
# Copyright 2014, Stone C. Lasley
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "deploy::php"

node[:deploy].each do |app_name, deploy|
  app_dir = node[:cake][:app_dir]

  #Config/database
  template "#{deploy[:deploy_to]}/current/#{app_dir}Config/database.php" do
    source 'database.php.erb'
    mode 0440
    group deploy[:group]

    if platform?('ubuntu')
      owner 'www-data'
    elsif platform?('amazon')
      owner 'apache'
    end

    variables(
        :host =>     (deploy[:database][:host]),
        :user =>     (deploy[:database][:username]),
        :password => (deploy[:database][:password]),
        :db =>       (deploy[:database][:database])
    )

    only_if do
      File.directory?("#{deploy[:deploy_to]}/current/#{app_dir}Config")
    end
  end

  #Config/core
  template "#{deploy[:deploy_to]}/current/#{app_dir}Config/core.php" do
    source 'core.php.erb'
    mode 0440
    group deploy[:group]

    if platform?('ubuntu')
      owner 'www-data'
    elsif platform?('amazon')
      owner 'apache'
    end

    only_if do
      File.directory?("#{deploy[:deploy_to]}/current/#{app_dir}Config")
    end
  end

  #cake console permissions
  file "#{deploy[:deploy_to]}/current/#{app_dir}Console/cake" do
    if platform?('ubuntu')
      owner 'www-data'
    elsif platform?('amazon')
      owner 'apache'
    end
    group deploy[:group]
    mode 0550
    action :touch
  end

  #create tmp subdirectories
  %w{tmp/cache/models tmp/cache/persistent tmp/cache/views tmp/logs tmp/sessions tmp/tests}.each do |dir|
    directory "#{deploy[:deploy_to]}/current/#{app_dir}tmp/#{dir}" do
      mode 0740
      group deploy[:group]
      if platform?('ubuntu')
        owner 'www-data'
      elsif platform?('amazon')
        owner 'apache'
      end
      action :create
      recursive true
    end
  end
end