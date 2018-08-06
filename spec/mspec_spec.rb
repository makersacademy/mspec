require_relative '../lib/mspec'

test_runner = MSpec.new

p "Starting tests"

test_runner.it "Stores the test in the tests hash with the description" do
  # arrange
  subject = MSpec.new
  test_var = 0;
  subject.it "Test description" do
    test_var = 1
  end

  # act
  subject.run

  # assert
  if test_var != 1
    raise "Number of tests is not one"
  else
    p "Test passed"
  end
end

test_runner.run
