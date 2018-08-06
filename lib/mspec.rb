require_relative './reporter'

class MSpec

  def initialize(reporter = Reporter.new)
    @tests = []
    @reporter = reporter
  end

  def it(description, &test)
    @tests.push({ :test => test, :description => description })
  end

  def run
    @reporter.info "Starting tests"
    run_tests
    @reporter.print_results
  end

  private

  def run_tests
    @tests.each{ |test|
      begin
        test[:test].call
        @reporter.report_test :passed
      rescue StandardError => e
        @reporter.error e
        @reporter.report_test :failed
      end
    }
  end

end
