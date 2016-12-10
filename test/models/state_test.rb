require "test_helper"

describe State do
  it "is valid with name" do
    region = create(:region, name: "y")
    division = create(:division, region_id: region.id)
    state = State.create(name: "x", division_id: division.id)
    value(state).must_be :valid?
  end

  it "is invalid without name" do
    region = create(:region, name: "y")
    division = create(:division, region_id: region.id)
    state = State.create(division_id: division.id)
    value(state).must_be :invalid?
  end

  it "is invalid without division_id" do
    region = create(:region, name: "y")
    division = create(:division, region_id: region.id)
    state = State.create(name: "x")
    value(state).must_be :invalid?
  end

  it "must have unique name" do
    state_1 = State.create(name: "x")
    state_2 = State.create(name: "x")
    value(state_2).must_be :invalid?
  end
end
