require 'pry'

class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end


  def add_student(student, grade)
    if self.roster.include?(grade)
      self.roster[grade] << student
    else
      self.roster[grade] = []
      self.roster[grade] << student
    end
  end

  def grade(target_grade)
    self.roster[target_grade]
  end

  def sort
    sorted = {}
    @roster.map do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
