require "pry"

class School

  attr_reader :roster

  def initialize(name)
      @name = name
      @roster = {}
  end

  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(school_grade)
    @roster[school_grade]
  end

  def sort
    if @roster
      @roster.map do |grade, students|
        @roster[grade] = students.sort
      end
      @roster
    end
  end
  
end
