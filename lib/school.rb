require "pry"

class School

  def initialize(name)
      @name = name
      @school_roster = {}
  end

  def roster
    @school_roster
  end

  def add_student(name, grade)
    if !@school_roster[grade]
      @school_roster[grade] = []
      @school_roster[grade] << name
    else
      @school_roster[grade] << name
    end
  end

  def grade(school_grade)
    @school_roster[school_grade]
  end

  def sort
    if @school_roster
      @school_roster.map do |grade, students|
        @school_roster[grade] = students.sort
      end
      @school_roster
    end

  end
end
