class School
    def initialize(name)
        @name = name
        @roster = {}
    end
    def roster
        @roster
    end
    def add_student(new_student, grade)
        if !@roster.key?(grade)
            @roster[grade]=[new_student]
        else
            @roster[grade]<< new_student
        end
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.map{|k,v| [k,v.sort]}.sort.to_h
    end
end 