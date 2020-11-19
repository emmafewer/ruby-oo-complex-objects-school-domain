require 'pry'
class School

    def initialize(school)
       @roster = {}  
    end 
    
    def roster
        @roster
    end

    def add_student(student, grade) 
        if @roster[grade]
            @roster[grade] << student
        else 
            @roster[grade]=[] << student
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.sort_by{|k,v|v.sort!}.to_h
    end
end
