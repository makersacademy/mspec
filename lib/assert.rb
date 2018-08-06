class Assert
  def self.is_true(description, &fact)
    if fact.call != true
      raise "Assertion failed #{description}"
    end
  end

end
