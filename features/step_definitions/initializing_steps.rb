When /^I initialize template with content:$/ do |code|
  step %(I eval the code), code
  @template = @evaluated_code
end

Given /^I initialized template:$/ do |code|
  step %(I initialize template with content:), code
end