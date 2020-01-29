class School

    attr_accessor :roster

    def initialize(school_name)
            @name = school_name
            @roster = Hash.new{|h,k| h[k] = []}
    end

    def add_student(name, grade)
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.map do |k,v|
            sorted_roster[k] = v.sort
        end
        sorted_roster
    end

end

school = School.new("Bay High School")