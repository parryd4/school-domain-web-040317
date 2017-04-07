require 'pry'

class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

   def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end
end

temp = School.new("")
temp.add_student("Homer Simpson", 9)
temp.add_student("Bart Simpson", 9)
temp.add_student("Avi Flombaum", 10)
temp.add_student("Jeff Baird", 10)
temp.add_student("Blake Johnson", 7)
temp.add_student("Jack Bauer", 7)
puts temp.sort
 puts ""
