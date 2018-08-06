require_relative '../lib/mspec'
require_relative '../lib/assert'
require_relative '../lib/reporter'
require_relative './dummies/dummy_output_stream'

test_runner = MSpec.new

p "Starting tests"

test_runner.it "Writes text passed into 'info' to the output stream" do
  # arrange
  output_stream = DummyOutputStream.new
  subject = Reporter.new output_stream

  # act
  subject.info "log something"

  # assert
  Assert.is_true "Info has been logged" do
    output_stream.dummy_output == "log something"
  end
  puts "Test passes"
end

test_runner.run
