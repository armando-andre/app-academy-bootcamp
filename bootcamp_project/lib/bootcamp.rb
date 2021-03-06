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

  def add_grade(student, grades)
    if enrolled?(student)
      @grades[student] << grades
      true
    else
      false
    end
  end

  def num_grades(student)
    @grades[student].length
  end

  def average_grade(student)
    @grades[student].sum / @grades[student].length.floor if enrolled?(student) && @grades[student].length > 0
  end
end