class Reporter
  def initialize(output_stream = $stdout)
    @output_stream = output_stream
    @num_tests = 0;
    @num_passing_tests = 0;
  end

  def info(message)
    @output_stream.puts(message)
  end

  def report_test(passed)
    @num_tests += 1
    if passed == :passed
      @num_passing_tests += 1
    end
  end

  def print_results
    @output_stream.puts "Ran #{@num_tests}; #{@num_passing_tests} passed"
  end

  def error exc
    @output_stream.puts exc.message
    @output_stream.puts exc.backtrace.inspect  
  end

end
