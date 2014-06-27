$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require 'capistrano'
require 'bundler/capistrano'

set :stages, %w(staging production)
set :default_stage, "production"
require 'capistrano/ext/multistage'

set :application, "health"

set :scm, :git
set :repository,  "git@github.com:mmkserver/mmksrv.git"
set :deploy_via, :copy
set :copy_strategy, :export

set :user, 'root'
set :use_sudo, false
