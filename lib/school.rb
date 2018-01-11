# code here!

class School
attr_accessor :highSchoolName, :roster

def initialize(highSchoolName)
  @highSchoolName = highSchoolName
  @roster = {}
end

def add_student(name, grade)

    if roster.key?(grade)
      roster[grade].push(name)
    else
      roster[grade] = [].push(name)
    end

end

def grade(grade)
  roster[grade]

end

def sort()
  final = Hash.new
  a = roster.keys.sort
  a.each do |word|
    final[word] = roster[word].sort!
  end
  final



end

end
