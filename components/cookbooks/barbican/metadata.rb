name             'Barbican'
maintainer       'OneOps'
maintainer_email 'support@oneops.com'
license          'Apache License, Version 2.0'
description      'Managed barbican secrets and containers'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

grouping 'default',
    :access => "global",
    :packages => [ 'base', 'mgmt.catalog', 'catalog', 'mgmt.manifest', 'manifest', 'bom', 'mgmt.cloud.service', 'cloud.service' ],
    :namespace => true

attribute 'endpoint',
          :description => "API Endpoint",
          :required => "required",
          :default => "",
          :format => {
              :help => 'API Endpoint URL',
              :category => '1.Authentication',
              :order => 1
          }

attribute 'tenant',
          :description => "Tenant",
          :required => "required",
          :default => "",
          :format => {
              :help => 'Tenant Name',
              :category => '1.Authentication',
              :order => 2
          }

attribute 'username',
          :description => "Username",
          :required => "required",
          :default => "",
          :format => {
              :help => 'API Username',
              :category => '1.Authentication',
              :order => 3
          }

attribute 'password',
          :description => "Password",
          :encrypted => true,
          :required => "required",
          :default => "",
          :format => {
              :help => 'API Password',
              :category => '1.Authentication',
              :order => 4
          }
