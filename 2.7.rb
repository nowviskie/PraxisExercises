class Person
  def initialize(first, last)
    @firstname = first
    @lastname = last
  end

  def to_s
    @lastname.to_s + ", " + @firstname.to_s
  end

end

TJ = Person.new("Thomas", "Jefferson")
puts TJ.to_s
