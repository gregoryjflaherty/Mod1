class Employee
  attr_reader :name, :age, :salary

  def initialize(name_age_salary)
    @name = name_age_salary[:name]
    @age = name_age_salary[:age].to_i
    @salary = name_age_salary[:salary].to_i
  end
end
