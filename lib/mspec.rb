class MSpec

  def initialize
    @tests = []
  end

  def it(description, &test)
    @tests.push({ :test => test, :description => description })
  end

  def run
    puts "Running tests"
    @tests.each{ |test|
      puts test[:description]
      test[:test].call
    }
  end

end
