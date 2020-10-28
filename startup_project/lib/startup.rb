require "employee"

class Startup
  def initialize(name, funding, salaries)
    @name = name
    @funding  = funding
    @salaries = salaries
    @employees = []
  end

  def name
    @name
  end

  def funding
    @funding
  end

  def salaries
    @salaries
  end

  def employees
    @employees
  end

  def valid_title?(title)
    @salaries.include?(title)
  end

  def >(startup)
    if self.funding > startup.funding
      true
    else
      false
    end
  end

  def hire(employee_name, title)
    if valid_title?(title)
      @employees << Employee.new(employee_name, title)
    else
      raise StandardError.new false
    end
  end

  def size
    @employees.length
  end
end