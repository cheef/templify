require 'active_support/core_ext/class/attribute_accessors'
require 'active_support/core_ext/string/behavior'
require 'active_support/core_ext/hash/keys'

module Templify
  class Base < String
    include Templify::DSL
    include Templify::Rendering
    extend  Templify::Serializable

    self.variables = []
  end
end