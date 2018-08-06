class DummyReporter
  attr_reader :num_passed_tests, :num_failed_tests, :num_tests

  def initialize
    @num_tests = 0
    @num_passed_tests = 0
    @num_failed_tests = 0
  end

  def info(message)
  end

  def error(exc)
  end

  def report_test(passed)
     @num_tests += 1
     if passed == :passed
       @num_passed_tests += 1
     else
       @num_failed_tests += 1
     end
  end

  def print_results
  end
end
