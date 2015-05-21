# Name of the class
default['chef-training-environment']['class']['name'] = 'default-fundamentals-training'

# Region to be used for the class
default['chef-training-environment']['class']['region'] = 'us-west-2'

default['chef-training-environment']['server']['machine_opts'] = {
  'ssh_username' => 'root',
  'image_id' => 'ami-27013c17',
  'instance_type' => 'm3.medium',
  'key_name' => 'chef-training-default',
  'security_group_ids' => 'sg-f4e25091' 
}

# Create the desired number of nodes to manage with Chef
default['chef-training-environment']['nodes']['instances'] = 1


# Machine options to use when creating Nodes
default['chef-training-environment']['nodes']['machine_opts'] = {
  'ssh_username' => 'root',
  'image_id' => 'ami-27013c17',
  'instance_type' => 't1.micro',
  'key_name' => 'chef-training-default',
  'security_group_ids' => 'sg-f4e25091'
}


# The following attributes are for creating an optional Windows remote workstation
# in Amazon that comes preinstalled with ChefDK, Sublime Text,
default['chef-training-environment']['workstation']['create'] = false
default['chef-training-environment']['workstation']['instances'] = 1


# Machine options to use when creating optional workstation
default['chef-training-environment']['workstation']['machine_opts'] = {
  'ssh_username' => 'root',
  'image_id' => 'ami-25266315',
  'instance_type' => 'm3.medium',
  'key_name' => 'chef-training-default',
  'security_group_ids' => 'sg-f4e25091'
}