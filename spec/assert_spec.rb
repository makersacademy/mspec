require_relative '../lib/mspec_runner'
require_relative '../lib/assert'

it "Does not raise an exception when the assertion is true" do
  # act
  Assert.is_true "The assertion is true" do
    true
  end
end

it "Raises an exception when the assertion is false" do
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
  end
end
