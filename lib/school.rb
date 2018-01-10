class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    sorted_school = {}
    sorted_students = nil
    @roster.each do |grade, students|
      sorted_students  = students.sort
      sorted_school[grade] = sorted_students
    end
    sorted_school
  end

end
