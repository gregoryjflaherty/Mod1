require './lib/employee'
require './lib/department'
require './lib/division'
RSpec.describe do Division
  it 'exists' do
    division = Division.new("Greg's Division")
    expect(division.name).to eq("Greg's Division")
  end

  it 'has departments' do
    division = Division.new("Greg's Division")
    expect(division.departments).to eq([])
  end

  it 'adds departments' do
    division = Division.new("Greg's Division")
    customer_service = Department.new("Customer Service")
    hr = Department.new("HR")
    division.add_department(customer_service)
    division.add_department(hr)
    expect(division.departments).to eq([customer_service, hr])
  end

  it 'lists departments by name' do
    division = Division.new("Greg's Division")
    customer_service = Department.new("Customer Service")
    hr = Department.new("HR")
    it = Department.new("IT")
    division.add_department(customer_service)
    division.add_department(hr)
    division.add_department(it)
    expect(division.departments_by_name).to eq(['Customer Service','HR', 'IT'])
  end

  it 'lists departments w/ multiple employees' do
    division = Division.new("Greg's Division")
    customer_service = Department.new("Customer Service")
    hr = Department.new("HR")
    division.add_department(customer_service)
    division.add_department(hr)
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    customer_service.hire(bobbi)
    customer_service.hire(aaron)
    expect(division.multiple_employee_deps).to eq([customer_service])
  end

  it 'lists departments w/ multiple employees- test2' do
    division = Division.new("Greg's Division")
    customer_service = Department.new("Customer Service")
    hr = Department.new("HR")
    it = Department.new("IT")
    division.add_department(customer_service)
    division.add_department(hr)
    division.add_department(it)
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    jax = Employee.new({name: "Jackson Flaherty", age: "22", salary: "100000"})
    justin = Employee.new({name: "Justin Herbert", age: "22", salary: "100000"})
    hr.hire(jax)
    hr.hire(justin)
    customer_service.hire(bobbi)
    customer_service.hire(aaron)
    expect(division.multiple_employee_deps).to eq([customer_service, hr])
  end

  it 'lists employees_by_name- test2' do
    division = Division.new("Greg's Division")
    customer_service = Department.new("Customer Service")
    hr = Department.new("HR")
    it = Department.new("IT")
    division.add_department(customer_service)
    division.add_department(hr)
    division.add_department(it)
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    jax = Employee.new({name: "Jackson Flaherty", age: "22", salary: "100000"})
    justin = Employee.new({name: "Justin Herbert", age: "22", salary: "100000"})
    hr.hire(jax)
    hr.hire(justin)
    customer_service.hire(bobbi)
    customer_service.hire(aaron)
    expect(division.employees_by_name).to eq(["Bobbi Jaeger", "Aaron Tanaka", "Jackson Flaherty", "Justin Herbert"])
  end

  it 'lists employee names' do
    division = Division.new("Greg's Division")
    customer_service = Department.new("Customer Service")
    hr = Department.new("HR")
    division.add_department(customer_service)
    division.add_department(hr)
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    customer_service.hire(bobbi)
    customer_service.hire(aaron)
    expect(division.employees_by_name).to eq(["Bobbi Jaeger", "Aaron Tanaka"])
  end
end
