require './lib/vehicle'
class Park
  attr_reader :name,
              :price,
              :passengers,
              :vehicles

  def initialize(name, price)
    @name = name
    @price = price
    @passengers = []
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
    vehicle.passengers.each do |passenger|
      @passengers << passenger
    end
    @passengers.flatten!
  end

  def revenue
    adults = @passengers.count {|passenger| p passenger.adult? == true }
    adults * @price
  end
end
