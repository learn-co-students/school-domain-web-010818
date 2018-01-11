# code here!
require 'pry'

class School
  attr_accessor :name, :roster


def initialize(name)
  @name = name
  # @grade = grade
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
  @roster.each_value do |names|
    names.sort!
  end
end

end

# start binding.pry
