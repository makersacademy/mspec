require_relative '../lib/mspec'
require_relative '../lib/assert'

test_runner = MSpec.new

p "Starting tests"

test_runner.it "Does not raise an exception when the assertion is true" do
  # act
  Assert.is_true "The assertion is true" do
    true
  end

  # assert
  p "Test passed"
end

test_runner.it "Raises an exception when the assertion is false" do
  # arrange
  exception_thrown = false

  # act
  begin
    Assert.is_true "The assertion is true" do
      false
    end
  rescue
    exception_thrown = true
  end

  # assert
  if !exception_thrown
    raise "Exception was not thrown"
  else
    puts "Test passed"
  end
end

test_runner.run
