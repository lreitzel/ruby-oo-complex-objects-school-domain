# code here!
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(year)
        roster[year]
    end

    def sort
        in_order = {}
        roster.each do |grade, students|
            in_order[grade] = students.sort
        end
        in_order
    end
end