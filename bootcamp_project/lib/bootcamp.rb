class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new{ |hash, key| hash[key] = [] }

    def name 
      @name
    end

    def slogan
      @slogan
    end

    def teachers
      @teachers.each do |ele|
        ele
      end
    end

    def students
      @students.each do |ele|
        ele
      end
    end

    def hire(teacher_to_hire)
      @teachers << teacher_to_hire
    end
  end
end