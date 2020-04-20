class School

  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student, grade)
    
  end


end

school = School.new("Washington")
p school.name
p school.roster