#
# Cookbook Name:: cakephp
# Recipe:: deploy
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

node[:deploy].each do |app_name, deploy|
  app_dir = node[:config][:app_dir] rescue "app/"

  #plugin migrations
  if File.directory?("#{deploy[:deploy_to]}/current/#{app_dir}Plugin")
    Dir.foreach("#{deploy[:deploy_to]}/current/#{app_dir}Plugin") do |item|
      next if item == '.' or item == '..'  or Dir["#{deploy[:deploy_to]}/current/#{app_dir}Plugin/#{item}/Config/Migration"].empty?
      Chef::Log.info("Running migrations for #{item}")
      execute 'cake migration' do
        cwd "#{deploy[:deploy_to]}/current/#{app_dir}"
        command "./Console/cake Migrations.migration run all --plugin #{item}"
        if platform?('ubuntu')
          user 'www-data'
        elsif platform?('amazon')
          user 'apache'
        end
        action :run
        returns 0
      end
    end
  end

  #app migrations
  if File.directory?("#{deploy[:deploy_to]}/current/#{app_dir}Config/Migration")
    Chef::Log.info("Running migrations for app")
    execute 'cake migration' do
      cwd "#{deploy[:deploy_to]}/current/#{app_dir}"
      command './Console/cake Migrations.migration run all'
      if platform?('ubuntu')
        user 'www-data'
      elsif platform?('amazon')
        user 'apache'
      end
      action :run
      returns 0
    end
  end

end