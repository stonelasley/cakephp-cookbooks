cakephp Cookbook
================
Cakephp deployment on Debian/Ubuntu. 


Requirements
------------

#### environment
- `Debian or Ubuntu Preferred`

#### framework
- `CakePHP 2.x` - there are no plans to support 1.x versions but 3.x will be.

#### cookbook
- [AWS/opsworks-cookbooks](www.github.com/aws/opsworks-cookbooks) - this was written with [AWS Opsworks](https://aws.amazon.com/opsworks/) in mind and depends on it's [deploy::php](https://github.com/aws/opsworks-cookbooks/tree/release-chef-11.4/deploy) cookbook

Attributes
----------

#### cakephp::cakephp
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['debug']</tt></td>
    <td>Integer</td>
    <td>Debug level</td>
    <td><tt>0</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['error_handler']</tt></td>
    <td>String</td>
    <td>Error handler callback</td>
    <td><tt>'ErrorHandler::handleError'</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['error_levels']</tt></td>
    <td>Array</td>
    <td>Level of errors to capture</td>
    <td><tt>['E_ALL', 'E_NOTICE', 'E_STRICT' ]</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['error_trace']</tt></td>
    <td>Boolean</td>
    <td>Include stack traces in logs</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['exception_handler']</tt></td>
    <td>String</td>
    <td>Exception handler callback</td>
    <td><tt>'ErrorHandler::handleException'</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['exception_renderer']</tt></td>
    <td>String</td>
    <td>Uncaught exception rendering class</td>
    <td><tt>'ExceptionRenderer'</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['exception_log']</tt></td>
    <td>Boolean</td>
    <td>Log exceptions</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['encoding']</tt></td>
    <td>String</td>
    <td>Application charset</td>
    <td><tt>'UTF-8'</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['prefixes']</tt></td>
    <td>Array</td>
    <td>Routing prefixes</td>
    <td><tt>['admin' 'manager']</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['log_error']</tt></td>
    <td>String</td>
    <td>Default error type</td>
    <td><tt>LOG_ERR</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['session_defaults']</tt></td>
    <td>String</td>
    <td>Session Configuration</td>
    <td><tt>'php'</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['session_handler']</tt></td>
    <td>String</td>
    <td>Name of session handler</td>
    <td><tt>Not used</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['asset']['timestamp]</tt></td>
    <td>Mixed</td>
    <td>Asset timestamp setting</td>
    <td><tt>Not used</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['asset']['filter_css]</tt></td>
    <td>String</td>
    <td>Css asset prefix</td>
    <td><tt>Not used</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['asset']['filter_js']</tt></td>
    <td>String</td>
    <td>Js asset prefix</td>
    <td><tt>Not used</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['timezone']</tt></td>
    <td>String</td>
    <td>Timezone</td>
    <td><tt>Not used</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['acl']['class_name']</tt></td>
    <td>String</td>
    <td>ACL class</td>
    <td><tt>'DbAcl'</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['acl']['database']</tt></td>
    <td>String</td>
    <td>ACL database</td>
    <td><tt>default</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['prefix']</tt></td>
    <td>String</td>
    <td>Application prefix</td>
    <td><tt>'myapp_'</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['cache_disable']</tt></td>
    <td>Boolean</td>
    <td>Disable all caching</td>
    <td><tt>Not used</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['cache_check']</tt></td>
    <td>Boolean</td>
    <td>Enable cache checking</td>
    <td><tt>Not used</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['cache_view_prefix']</tt></td>
    <td>String</td>
    <td>Prefix view cache</td>
    <td><tt>Not used</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['cache_engine']</tt></td>
    <td>String</td>
    <td>Cache engine</td>
    <td><tt>'File'</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['cache_duration']</tt></td>
    <td>String</td>
    <td>Cache duration</td>
    <td><tt>'+999 days'</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['cache_core_probability']</tt></td>
    <td>Integer</td>
    <td>Probability of being selected</td>
    <td><tt>Not used</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['cache_core_path']</tt></td>
    <td>String</td>
    <td>System temp path</td>
    <td><tt>"CACHE . 'persistent' . DS"</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['cache_core_serialize']</tt></td>
    <td>Boolean</td>
    <td>Serialize cache</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['cache_core_persistent']</tt></td>
    <td>Boolean</td>
    <td>Connection persistence</td>
    <td><tt>Not used</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['cache_core_server']</tt></td>
    <td>Array</td>
    <td>Cache Server</td>
    <td><tt>Not used</tt></td>
  </tr>
  <tr>
    <td><tt>['cakephp']['core']['cache_core_compress']</tt></td>
    <td>Boolean</td>
    <td>Compress cache</td>
    <td><tt>Not used</tt></td>
  </tr>
  <tr>
     <td><tt>['cakephp']['core']['cache_model_probability']</tt></td>
     <td>Integer</td>
     <td>Probability of being selected</td>
     <td><tt>Not used</tt></td>
   </tr>
   <tr>
     <td><tt>['cakephp']['core']['cache_model_path']</tt></td>
     <td>String</td>
     <td>System temp path</td>
     <td><tt>"CACHE . 'models' . DS"</tt></td>
   </tr>
   <tr>
     <td><tt>['cakephp']['core']['cache_model_serialize']</tt></td>
     <td>Boolean</td>
     <td>Serialize cache</td>
     <td><tt>true</tt></td>
   </tr>
   <tr>
     <td><tt>['cakephp']['core']['cache_model_persistent']</tt></td>
     <td>Boolean</td>
     <td>Connection persistence</td>
     <td><tt>Not used</tt></td>
   </tr>
   <tr>
     <td><tt>['cakephp']['core']['cache_model_server']</tt></td>
     <td>Array</td>
     <td>Cache Server</td>
     <td><tt>Not used</tt></td>
   </tr>
   <tr>
     <td><tt>['cakephp']['core']['cache_model_compress']</tt></td>
     <td>Boolean</td>
     <td>Compress cache</td>
     <td><tt>Not used</tt></td>
   </tr>
   <tr>
     <td><tt>['cakephp']['database']['datasource']</tt></td>
     <td>String</td>
     <td>Datasource type</td>
     <td><tt>Required</tt></td>
   </tr>
   <tr>
     <td><tt>['cakephp']['database']['']</tt></td>
     <td>String</td>
     <td></td>
     <td><tt></tt></td>
   </tr>
   <tr>
     <td><tt>['cakephp']['database']['']</tt></td>
     <td>String</td>
     <td></td>
     <td><tt></tt></td>
   </tr>
   <tr>
     <td><tt>['cakephp']['database']['']</tt></td>
     <td>String</td>
     <td></td>
     <td><tt></tt></td>
   </tr>
   <tr>
     <td><tt>['cakephp']['database']['']</tt></td>
     <td>String</td>
     <td></td>
     <td><tt></tt></td>
   </tr>
   <tr>
     <td><tt>['cakephp']['database']['']</tt></td>
     <td>String</td>
     <td></td>
     <td><tt></tt></td>
   </tr>
   <tr>
     <td><tt>['cakephp']['database']['']</tt></td>
     <td>String</td>
     <td></td>
     <td><tt></tt></td>
   </tr>
   <tr>
     <td><tt>['cakephp']['database']['']</tt></td>
     <td>String</td>
     <td></td>
     <td><tt></tt></td>
   </tr>
</table>

Usage
-----
#### cakephp::deploy

Just include `cakephp::deploy` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cakephp::deploy]"
  ]
}
```

Contributing
------------

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Stone C. Lasley, Michael Clawson
</table>

Usage
-----
#### cakephp::deploy

Just include `cakephp::deploy` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cakephp::deploy]"
  ]
}
```

Contributing
------------

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Stone C. Lasley, Michael Clawson
   <tr>
     <td><tt>['cakephp']['database']['']</tt></td>
     <td>String</td>
     <td></td>
     <td><tt></tt></td>
   </tr>
</table>

Usage
-----
#### cakephp::deploy

Just include `cakephp::deploy` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cakephp::deploy]"
  ]
}
```

Contributing
------------

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Stone C. Lasley, Michael Clawson
</table>

Usage
-----
#### cakephp::deploy

Just include `cakephp::deploy` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cakephp::deploy]"
  ]
}
```

Contributing
------------

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Stone C. Lasley, Michael Clawson
   <tr>
     <td><tt>['cakephp']['database']['']</tt></td>
     <td>String</td>
     <td></td>
     <td><tt></tt></td>
   </tr>
</table>

Usage
-----
#### cakephp::deploy

Just include `cakephp::deploy` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cakephp::deploy]"
  ]
}
```

Contributing
------------

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Stone C. Lasley, Michael Clawson
</table>

Usage
-----
#### cakephp::deploy

Just include `cakephp::deploy` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cakephp::deploy]"
  ]
}
```

Contributing
------------

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Stone C. Lasley, Michael Clawson
</table>

Usage
-----
#### cakephp::deploy

Just include `cakephp::deploy` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cakephp::deploy]"
  ]
}
```

Contributing
------------

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Stone C. Lasley, Michael Clawson
</table>

Usage
-----
#### cakephp::deploy

Just include `cakephp::deploy` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[cakephp::deploy]"
  ]
}
```

Contributing
------------

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Stone C. Lasley, Michael Clawson
