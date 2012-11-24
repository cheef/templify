module Templify::ActiveRecord
  def templify column, template_klass = Templify::Base
    serialize column, template_klass
  end
end