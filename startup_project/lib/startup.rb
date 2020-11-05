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

  def pay_employee(instance)
    moneyToPay = @salaries[instance.title]

    if @funding >= moneyToPay
      instance.pay(moneyToPay)
      @funding -= moneyToPay
    else
      raise "No funds"
    end
  end

  def payday
    @employees.each do |ele|
      self.pay_employee(ele)
    end
  end

  def average_salary
    sum = 0

    @employees.each do |val|
      sum += @salaries[val.title]
    end

    sum / @employees.length
  end

  def close
    @employees.clear()
    @funding = 0
  end

  def acquire(newStartup)
    p newStartup.funding = @funding
  end
end