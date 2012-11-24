module Templify::Serializable
  def load object
    new object
  end

  def dump template
    template.to_s
  end
end