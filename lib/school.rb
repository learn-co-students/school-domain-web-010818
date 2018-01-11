require 'pry'

class School

  attr_accessor :name, :students_grade

  def initialize(name="")
    @name = name
    @roster = {}
  end


  def roster
    @roster
  end

  def add_student(name="", students_grade="") #add student's name and grade to roster

    if @roster[students_grade] == nil
      @roster[students_grade] = [name]
    else
      @roster[students_grade] << name
    end
  end

  def grade(students_grade)
    @roster[students_grade]
  end



  def sort
    @roster.each do |students_grade, names|
        @roster[students_grade] = names.sort
      end
      @roster
  end
end
