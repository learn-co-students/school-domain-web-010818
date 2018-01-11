require 'pry'

class School

attr_accessor :grade, :name

@@roster ={}


  def roster
    @@roster
  end

  def initialize(school)
    @name = school
    @@roster ={}
  end


  def add_student(name, grade_lvl)

     if !(@@roster.has_key?(grade_lvl))
      @@roster[grade_lvl]=[]
      @@roster[grade_lvl]<<name
    elsif
      @@roster.has_key?(grade_lvl)
      @@roster[grade_lvl]<<name
    end

    @name = name
    @grade = grade_lvl
  end


def grade(grade_lvl)
  roster[grade_lvl]
end

def sort

  roster.each do |grade, studentsArr|
    studentsArr.sort!
    end
  end

end
