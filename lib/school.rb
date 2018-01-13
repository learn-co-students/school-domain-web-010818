class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(student_g)
    @roster[student_g]
  end

  def sort
    new_hash = {}
    @roster.each do |grade, students|
      new_hash[grade] = students.sort
  end
      new_hash
  end 

end
