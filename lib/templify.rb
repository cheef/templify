require "active_support/dependencies/autoload"

module Templify
  autoload :Base,     'templify/base'
  autoload :Rails,    'templify/rails'
  autoload :Variable, 'templify/variable'
  autoload :Version,  'templify/version'
end

if defined? Rails
  require 'templify/railtie'
end