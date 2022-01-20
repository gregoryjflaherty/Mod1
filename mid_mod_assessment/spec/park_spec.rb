require './lib/park'
RSpec.describe do Park
  it 'exists' do
    park = Park.new('Yosemite', 45.99)

    expect(park).to be_an_instance_of(Park)
  end

  it 'has a name' do
    park = Park.new('Yosemite', 45.99)

    expect(park.name).to eq('Yosemite')
  end

  it 'has a price' do
    park = Park.new('Yosemite', 45.99)

    expect(park.price).to be(45.99)
  end

  it 'can add vehicles' do
    park = Park.new('Yosemite', 45.99)
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle_2 = Vehicle.new("2006", "Chevrolet", "Silverado")
    park.add_vehicle(vehicle_1)
    park.add_vehicle(vehicle_2)

    expect(park.vehicles).to include(vehicle_1)
    expect(park.vehicles).to include(vehicle_2)
  end

  it 'can list passengers' do
    park = Park.new('Yosemite', 45.99)
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    vehicle_1.add_passenger(charlie)
    vehicle_1.add_passenger(jude)
    vehicle_1.add_passenger(taylor)
    park.add_vehicle(vehicle_1)

    expect(park.passengers).to include(charlie)
    expect(park.passengers).to include(jude)
    expect(park.passengers).to include(taylor)
  end

  it 'can list revenue' do
    park = Park.new('Yosemite', 45.99)
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    vehicle_1.add_passenger(charlie)
    vehicle_1.add_passenger(jude)
    vehicle_1.add_passenger(taylor)
    park.add_vehicle(vehicle_1)

    expect(park.revenue).to be(91.98)
  end

  it 'can list revenue' do
    park = Park.new('Yosemite', 45.99)
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle_2 = Vehicle.new("2006", "Chevrolet", "Silverado")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    mary = Passenger.new({"name" => "Mary", "age" => 45})
    billy = Passenger.new({"name" => "Billy", "age" => 15})
    vehicle_1.add_passenger(charlie)
    vehicle_1.add_passenger(jude)
    vehicle_1.add_passenger(taylor)
    vehicle_2.add_passenger(mary)
    vehicle_2.add_passenger(billy)
    park.add_vehicle(vehicle_1)
    park.add_vehicle(vehicle_2)

    expect(park.revenue).to eq(137.97)
  end
end
