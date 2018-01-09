# code here!

class School

  attr_reader :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(year)
    @roster[year]
  end

  def sort
    @roster.each { |year, students| students.sort! }
  end

end
