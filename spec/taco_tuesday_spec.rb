require 'taco_tuesday'

RSpec.describe TacoTuesday do
  it "has a version number" do
    expect(TacoTuesday::VERSION).not_to be nil
  end

  it "adds #taco_tuesday? to the Date class" do
    expect { Date.today.taco_tuesday? }.to_not raise_error
  end

  it "adds #taco_tuesday? to the Time class" do
    expect { Time.now.taco_tuesday? }.to_not raise_error
  end

  it "should retrun a Boolean value" do
    expect(Date.today.taco_tuesday?).to be(true).or(be(false))
    expect(Time.now.taco_tuesday?).to be(true).or(be(false))
  end

  it "should return true if Date is a tuesday" do
    tuesday = Date.new(2020, 5, 26) # May 26th 2020 is a Tuesday
    expect(tuesday.taco_tuesday?).to be true
  end

  it "should return false if Date is not a tuesday" do
    monday = Date.new(2020, 5, 25) # May 25th 2020 is a Monday
    expect(monday.taco_tuesday?).to be false
  end

  it "should return true if Time is a tuesday" do
    tuesday = Time.new(2020, 5, 26) # May 26th 2020 is a Tuesday
    expect(tuesday.taco_tuesday?).to be true
  end

  it "should return false if Time is not a tuesday" do
    monday = Time.new(2020, 5, 25) # May 25th 2020 is a Monday
    expect(monday.taco_tuesday?).to be false
  end
end
