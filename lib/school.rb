require 'pry'

class School
  attr_accessor :school_name,:roster
  def initialize(school_name)
    @school_name=school_name
    @roster={}
  end
  def roster
    @roster
  end
  def add_student(student_name,grade)
    roster[grade] ||=[]
    roster[grade]<<student_name
  end
  def grade(year)
    roster[year]
  end
  def sort
    sorted_roster={}
    roster.each do |g,sn|
      sorted_roster[g]=sn.sort
    end
    sorted_roster
  end


end
