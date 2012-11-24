require 'active_support/dependencies/autoload'

module Templify
  autoload :ActiveRecord, 'templify/active_record'
  autoload :Base,         'templify/base'
  autoload :DSL,          'templify/dsl'
  autoload :Rails,        'templify/rails'
  autoload :Rendering,    'templify/rendering'
  autoload :Serializable, 'templify/serializable'
  autoload :Variable,     'templify/variable'
  autoload :Version,      'templify/version'
end

if defined? Rails
  require 'templify/railtie'
end