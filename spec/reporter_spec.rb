require_relative '../lib/mspec'
require_relative '../lib/assert'
require_relative '../lib/reporter'

test_runner = MSpec.new

p "Starting tests"

test_runner.it "Writes text passed into 'info' to the output stream" do
  # arrange
  dummy_output_stream_class = Class.new do

    attr_reader :dummy_output

    def initialize
      @dummy_output = ""
    end

    def puts (message)
      @dummy_output += message
    end
  end
  output_stream = dummy_output_stream_class.new
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
