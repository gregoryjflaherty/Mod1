class Division
  attr_reader :name, :departments

  def initialize(name)
    @name = name
    @departments = []
  end

  def add_department(department)
    @departments << department
  end

  def departments_by_name
    @departments.map {|department| department.name}
  end

  def multiple_employee_deps
    @departments.find_all {|department| department.employees.length > 1}
  end

  def employees_by_name
    employees = @departments.map {|department| department.employees}
    employee_names = employees.flatten.map {|employee| employee.name}
  end
end
