###
# Do not use this file to override the cakephp cookbook's default
# attributes. Instead, please use the customize.rb attributes file,
# which will keep your adjustments separate from the original
# codebase and make it easier to upgrade.
#
# However, you should not edit customize.rb directly. Instead, create
# "cakephp/attributes/customize.rb" in your cookbook repository and
# put the overrides in YOUR customize.rb file.
#
# Do NOT create an 'cakephp/attributes/cakephp.rb' in your cookbooks. Doing so
# would completely override this file and might cause upgrade issues.
#
# See also: http://docs.aws.amazon.com/opsworks/latest/userguide/customizing.html
###

# App Settings
default[:cakephp][:app_dir] = 'app/'

default[:cakephp][:database][:datasource] = 'Database/Mysql'
default[:cakephp][:database][:persistent] = ''
default[:cakephp][:database][:host] = ''
default[:cakephp][:database][:login] = ''
default[:cakephp][:database][:password] = ''
default[:cakephp][:database][:database] = ''
default[:cakephp][:database][:prefix] = ''
default[:cakephp][:database][:encoding] = 'utf8'

# Database settings
default[:cakephp][:core][:debug] = 0
default[:cakephp][:core][:error_handler] = 'ErrorHandler::handleError'
default[:cakephp][:core][:error_levels] = ['E_ALL', 'E_NOTICE', 'E_STRICT' ]
default[:cakephp][:core][:error_trace] = true
default[:cakephp][:core][:exception_handler] = 'ErrorHandler::handleException'
default[:cakephp][:core][:exception_renderer] = 'ExceptionRenderer'
default[:cakephp][:core][:exception_log] = true
default[:cakephp][:core][:encoding] = 'UTF-8'
default[:cakephp][:core][:prefixes] =  ['admin' 'manager']
default[:cakephp][:core][:log_error] = 'LOG_ERR'
default[:cakephp][:core][:session_defaults] = 'php'
#default[:cakephp][:core][:session_handler] = ['model', 'session']
default[:cakephp][:core][:security_salt] = 'DYhG93b0qyJfIxfs2guVoUubWwvniR2G0FgaC9mi'
default[:cakephp][:core][:security_seed] = '76859309657453542496749683645'
#default[:cakephp][:core][:asset][:timestamp] = true
#default[:cakephp][:core][:asset][:filter_css] = 'css.php'
#default[:cakephp][:core][:asset][:filter_js] = 'js.php'
#default[:cakephp][:core][:timezone] = 'UTC'
default[:cakephp][:core][:acl][:classname] = 'DbAcl'
default[:cakephp][:core][:acl][:database] = 'default'
default[:cakephp][:core][:prefix] = 'myapp_'
#default[:cakephp][:core][:cache_disable] = true
#default[:cakephp][:core][:cache_check] = true
#default[:cakephp][:core][:cache_view_prefix] = 'prefix'
default[:cakephp][:core][:cache_engine] = 'File'
default[:cakephp][:core][:cache_duration] = '+999 days'
#default[:cakephp][:core][:cache_core_probability] = 100
default[:cakephp][:core][:cache_core_path] = "CACHE . 'persistent' . DS"
default[:cakephp][:core][:cache_core_serialize] = true
#default[:cakephp][:core][:cache_core_persistent] = true
#default[:cakephp][:core][:cache_core_servers] = ['127.0.0.1:11211']
#default[:cakephp][:core][:cache_core_compress] = false
#default[:cakephp][:core][:cache_model_probability] = '100'
default[:cakephp][:core][:cache_model_path] = "CACHE . 'models' . DS"
default[:cakephp][:core][:cache_model_serialize] = true
#default[:cakephp][:core][:cache_model_persistent] = true
#default[:cakephp][:core][:cache_model_servers] = ['127.0.0.1:11211']
#default[:cakephp][:core][:cache_model_compress] = false