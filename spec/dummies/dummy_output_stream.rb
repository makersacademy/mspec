class DummyOutputStream

  attr_reader :dummy_output

  def initialize
    @dummy_output = ""
  end

  def puts (message)
    @dummy_output += message
  end
end
