class School
attr_accessor :name, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

def roster
  @roster
end


def add_student(name, grade)
  if roster.keys.include?(grade)
  @roster[grade] << name
else
  @roster[grade] = []
  @roster[grade] << name

end
end

def grade(num)
  @roster[num].map do |student|
    student
  end
end

def sort
  sorted_class = {}
@roster.map do |grade, name|
  sorted_class[grade] = name.sort
end
sorted_class
end

end
