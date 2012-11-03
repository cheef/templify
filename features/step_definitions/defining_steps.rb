When /^I define(?: empty)? template like below:$/ do |code|
  step %(I eval the code), code
end

Given /^defined template:$/ do |code|
  step %(I define template like below:), code
end

Then /^"(.*?)" template should have (\d+) variables$/ do |klass, count|
  puts Kernel.const_get(klass).send(:variables).inspect
  Kernel.const_get(klass).send(:variables).should have(count).records
end