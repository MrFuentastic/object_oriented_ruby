# employee_1 = ["Jimmy", "Stewart", 70000, true]
# employee_2 = ["Susan", "Messing", 80000, true]

# puts employee_1[0] + ' ' + employee_1[1] + ' makes ' + employee_1[2].to_s + ' a year.'

# puts employee_2[0] + ' ' + employee_2[1] + ' makes ' + employee_2[2].to_s + ' a year.'

# employee_1 = {first_name: "Jimmy", last_name: "Stewart", salary: 70000, active: true}
# employee_2 = {first_name: "Susan", last_name: "Messing", salary: 80000, active: true}

# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]} a year."
# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes #{employee_2[:salary]} a year."

class Employee

  def initialize(first_name, last_name, salary, active)
    @first_name = first_name
    @last_name = last_name
    @salary = salary
    @active = active
  end

  def first_name
    return @first_name
  end

  def last_name
    return @last_name
  end

  def salary
    return @salary
  end

  def active
    return @active
  end

end

employees = [
Employee.new("Jimmy", "Stewart", 10000, true),
Employee.new("Susan", "Messing", 80000, false)
]

employees.each do |employee|
  if employee.salary > 50000
    puts 'yassss'
  else
    puts "nah"
  end
end