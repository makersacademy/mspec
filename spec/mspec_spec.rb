require_relative '../lib/mspec'
require_relative '../lib/assert'

test_runner = MSpec.new

p "Starting tests"

test_runner.it "Runs all tests passed in through the 'it' method" do
  # arrange
  subject = MSpec.new
  test_var = 0;

  subject.it "Adds one to the tracking variable" do
    test_var += 1
  end

  subject.it "Adds two to the tracking variable" do
    test_var += 2
  end

  # act
  subject.run

  # assert
  Assert.is_true "All tests have run" do
    test_var == 3
  end
end

test_runner.run
