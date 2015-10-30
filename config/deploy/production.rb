# Settings for staging server
server '52.32.151.49', :app, :web, :db, :primary => true
set :rails_env, 'development'

set :use_sudo, false
set :deploy_via, :remote_cache
set :user, 'w3villa'
set :rvm_ruby_version, 'ruby-2.1.0'
set :deploy_to, "/home/#{user}/#{application}"
set :branch, 'master'