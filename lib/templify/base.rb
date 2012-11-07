require 'active_support/core_ext/class/attribute_accessors'
require 'active_support/core_ext/string/behavior'
require 'active_support/core_ext/hash/keys'

class Templify::Base < String
  cattr_accessor :variables
  cattr_accessor :desc

  self.variables = []

  def initialize value = ''
    super value.to_s
  end

  def self.desc text = nil
    if text
      self.desc = text
    else
      @@desc
    end
  end

  def self.variable name
    self.variables ||= []
    self.variables << Templify::Variable.new(name, desc).tap do
      self.desc = nil
    end
  end

  def render variables
    self % variables.symbolize_keys
  end

  def % variables
    super
  end

  def variable_names
    self.class.variables.map(&:name)
  end
end