# This is the minimum config that is needed to let
# the provisioning cookbook `chef-training-environment` work
current_dir       = File.dirname(__FILE__)
chef_repo_path    "#{current_dir}/.."
node_name         'chef-training-environment'
file_cache_path   File.join(current_dir, 'local-mode-cache', 'cache')
# Berkshelf no longer depedends on Chef so we avoid using the
cookbook_path "#{current_dir}/../cookbooks"
