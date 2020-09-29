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

    def enroll(student)
      if students.length < @student_capacity
        @students << student
        true
      else
        false
      end
    end

    def enrolled?(student)
      if @students.include?(student)
        true
      else
        false
      end
    end
  end

  def student_to_teacher_ratio
    @students.length / @teachers.length
  end
end

bootcamp1 = Bootcamp.new("App Academy", "All Together", 30)
bootcamp1.hire("Jeff")
bootcamp1.hire("Matthias")
bootcamp1.hire("Armando")
bootcamp1.enroll("student one")
bootcamp1.enroll("student two")
bootcamp1.enroll("student three")
bootcamp1.enroll("student four")

p bootcamp1.student_to_teacher_ratio