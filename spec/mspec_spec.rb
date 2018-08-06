require_relative '../lib/mspec'

test_runner = MSpec.new

p "Starting tests"

test_runner.it "Runs all tests passed in through the 'it' method" do
  # arrange
  subject = MSpec.new
  test_var = 0;

  subject.it "Test description" do
    test_var += 1
  end

  subject.it "Test description" do
    test_var += 2
  end

  # act
  subject.run

  # assert
  if test_var != 3
    raise "Not all tests have been run"
  else
    p "Test passed"
  end
end

test_runner.run
