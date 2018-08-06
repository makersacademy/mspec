require_relative './assert'
require_relative './reporter'
require_relative './mspec'

$test_runner = MSpec.new

def run_tests
  $test_runner.run
end

def it(description, &test)
  $test_runner.it description, &test
end
