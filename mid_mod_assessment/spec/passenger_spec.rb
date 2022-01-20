require './lib/passenger'
RSpec.describe Passenger do
  it 'exists' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    expect(charlie).to be_an_instance_of(Passenger)
    expect(taylor).to be_an_instance_of(Passenger)
  end

  it 'has a name' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.name).to eq('Charlie')
    expect(taylor.name).to eq('Taylor')
  end

  it 'tells if adult' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.adult?).to be(true)
    expect(taylor.adult?).to eq(false)
  end

  it 'tells if driving' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})

    expect(charlie.driver?).to be(false)
  end

  it 'can drive' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    charlie.drive
    expect(charlie.driver?).to be(true)
  end
end
