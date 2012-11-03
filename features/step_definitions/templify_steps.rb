Transform /^(-?\d+)$/ do |number|
  number.to_i
end

Given /^I eval the code$/ do |code|
  begin
    @evaluated_code = eval code
  rescue Exception => e
    @error = e
    puts @error.message
    puts @error.backtrace[0..4].join("\n")
  end
end

Then /^no errors should be raised$/ do
  @error.should be_nil
end