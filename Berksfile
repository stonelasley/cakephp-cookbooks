source "https://api.berkshelf.com"
def opsworks_cookbook(name, version = '>= 0.0.0', options = {})
  cookbook name, version, { path: "~/Projects/RubymineProjects/chef/opsworks-cookbooks/#{name}" }.merge(options)
end

metadata

opsworks_cookbook 'deploy'
