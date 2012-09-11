require "angel_list/version"
require 'angel_list/config'
require 'angel_list/tools'
require 'angel_list/startup'
require 'angel_list/user'
require 'angel_list/auth'

if File.exists?('config/angel_list.yml')
  oauth_config = YAML.load_file('config/weibo.yml')[ENV["RAILS_ENV"] || ENV["RACK_ENV"] || "development"]
  puts oauth_config.inspect
  AngelList::Config.options = oauth_config

else
  # puts "\n\n=========================================================\n\n" +
  #      "  You haven't made a config/angel_list.yml file.\n\n  You should.  \n\n  The weibo gem will work much better if you do\n\n" +
  #      "  Please set AngelList::Config.client_id and \n  Weibo::Config.api_secret\n  somewhere in your initialization process\n\n" +
  #      "=========================================================\n\n"
end