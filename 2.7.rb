class Person
  def initialize
    @firstname = "Thomas"
    @lastname = "Jefferson"
  end

  def to_s
    @lastname.to_s + ", " + @firstname.to_s
  end

end

TJ = Person.new
puts TJ.to_s
