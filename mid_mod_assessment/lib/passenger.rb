class Passenger
  attr_reader :name, :age, :driving
  def initialize(attributes)
    @name = attributes['name']
    @age = attributes['age']
    @driving = false
  end

  def adult?
    @age >= 18 ? true :false
  end

  def driver?
    @driving
  end

  def drive
    @driving = true
  end
end
