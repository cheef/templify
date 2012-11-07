When /^I extend model attribute with templify:$/ do |code|
  step %(I eval the code), code
end

When /^I build an instance of the "(.*?)" class$/ do |klass|
  @instance = klass.constantize.new
end

Then /^"(.*?)" attribute of this instance should be a template$/ do |attribute|
  @instance.send(attribute).should be_an Templify::Base
end

When /^I change "(.*?)" attribute of this instance to "(.*?)"$/ do |attribute, value|
  @instance.send :"#{attribute}=", value
end

When /^I get "(.*?)" template of this instance$/ do |attribute|
  @template = @instance.send(attribute)
end

When /^the following variables should be defined for this template:$/ do |table|
  @template.variable_names.should == table.hashes.map { |v| v[:name] }
end

