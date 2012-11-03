When /^I render template with variables:$/ do |table|
  @rendered_template = @template.render table.hashes.first
end

Then /^rendered template should be "(.*?)"$/ do |text|
  @rendered_template.should == text
end