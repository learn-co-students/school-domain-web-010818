require 'pry'

class School



  def initialize(name)
    @name = name

    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if roster.keys.include?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    roster.select do |elem|
      elem == grade
    end[grade]
  end

  def sort
    roster.each do |grade, names|
      sorted_names = names.sort
      roster[grade] = sorted_names
    end.sort.to_h

  end

end
