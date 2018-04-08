local_mode true

role_path     "roles"
cookbook_path ["cookbooks", "vendor/cookbooks"]

knife[:ssh_attribute] = "knife_zero.host"
knife[:use_sudo] = true

knife[:automatic_attribute_whitelist] = %w[
  fqdn
  os
  os_version
  hostname
  ipaddress
  roles
  recipes
  ipaddress
  platform
  platform_version
  cloud
  cloud_v2
]
