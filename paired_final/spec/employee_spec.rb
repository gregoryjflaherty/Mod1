require 'rspec'
require './lib/employee'

RSpec.describe do Employee
  it 'exists' do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    expect(bobbi).to be_a(Employee)
  end

  it 'has a name' do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    expect(bobbi.name).to eq("Bobbi Jaeger")
  end

  it 'has an age' do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    expect(bobbi.age).to be(30)
  end

  it 'has a salary' do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    expect(bobbi.salary).to be(100000)
  end
end
