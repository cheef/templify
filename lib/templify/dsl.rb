require 'active_support/concern'

module Templify::DSL
  extend ActiveSupport::Concern

  included do
    cattr_accessor :variables
    cattr_accessor :desc
  end

  def variable_names
    self.class.variables.map(&:name)
  end

  module ClassMethods
    def desc text = nil
      if text
        self.desc = text
      else
        super
      end
    end

    def variable name
      self.variables << Templify::Variable.new(name, desc).tap do
        self.desc = nil
      end
    end
  end
end