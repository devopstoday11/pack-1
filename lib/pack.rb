$:.unshift File.dirname(__FILE__)
require 'mixlib/cli'
require 'highline'
require 'rest_client'

module Pack
  VERSION = '0.1'
end

require 'pack/console'
