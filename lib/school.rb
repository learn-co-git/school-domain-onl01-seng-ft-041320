class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
      if @roster.has_key?(grade)
        @roster[grade] << student
      else
        @roster[grade] = student.split(',')
      end
    end
    
    def grade(n)
      @roster.each do |k, v|
        if k == n
          return v
        end
      end
    end
    
    def sort
      @roster.sort()
    end

  end

school = School.new("Washington")
p school.name
p school.roster