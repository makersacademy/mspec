class Reporter
  def initialize(output_stream)
    @output_stream = output_stream
  end

  def info(message)
    @output_stream.puts(message)
  end

end
