require_relative '../lib/mspec_runner'
require_relative '../lib/assert'
require_relative './dummies/dummy_reporter'

it "Records the result of a passed test with the reporter" do
  # arrange
  dummy_reporter = DummyReporter.new
  subject = MSpec.new dummy_reporter
  subject.it "Is true" do
    Assert.is_true "It is true" do true end
  end

  # act
  subject.run

  # assert
  Assert.is_true "Number of passed tests is 1" do
    dummy_reporter.num_passed_tests == 1
  end
end

it "Records the result of a failed test with the reporter" do
  # arrange
  dummy_reporter = DummyReporter.new
  subject = MSpec.new dummy_reporter
  subject.it "Is true" do
    Assert.is_true "It is true" do false end
  end

  # act
  subject.run

  # assert
  Assert.is_true "Number of passed tests is 1" do
    dummy_reporter.num_passed_tests == 0
  end
end
