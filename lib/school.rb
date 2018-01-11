class School
attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end


  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |g, names|
      @roster[g] = names.sort
    end
    @roster
  end
end
