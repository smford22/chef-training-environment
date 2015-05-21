#
# Cookbook Name:: chef-training-environment
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
class_name = node['chef-training-environment']['class']['name']
num_instances = node['chef-training-environment']['nodes']['instances']
create_workstation = node['chef-training-environment']['workstation']['create']
num_workstations = node['chef-training-environment']['workstation']['instances']


server_opts = node['chef-training-environment']['server']['machine_opts'].to_hash
ChefHelpers.symbolize_keys_deep!(server_opts)

nodes_opts = node['chef-training-environment']['nodes']['machine_opts'].to_hash
ChefHelpers.symbolize_keys_deep!(nodes_opts)

workstation_opts = node['chef-training-environment']['workstation']['machine_opts'].to_hash
ChefHelpers.symbolize_keys_deep!(workstation_opts)


machine_batch do 
  # create the chef server for the class
  machine "#{class_name}-chef-server" do
    machine_options(server_opts)
    converge true
    tag "#{class_name}-chef-server"
  end

  # create the nodes students will manage with chef
  1.upto(num_instances) do |n|
    machine "#{class_name}-instance#{n}" do
      machine_options(nodes_opts)
      tag "#{class_name}"
      converge true
    end
  end
  
end
