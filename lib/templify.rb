require "active_support/dependencies/autoload"

module Templify
  autoload :Base,     'templify/base'
  autoload :Rails,    'templify/rails'
  autoload :Variable, 'templify/variable'
  autoload :Version,  'templify/version'
end

if defined? Rails::Railtie
  require 'templify/railtie'
end