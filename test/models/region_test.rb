require "test_helper"

describe Region do
  it "is valid with name" do
    state = Region.create(name: "x")
    value(state).must_be :valid?
  end

  it "is invalid without name" do
    state = Region.create()
    value(state).must_be :invalid?
  end

  it "must have unique name" do
    state_1 = Region.create(name: "x")
    state_2 = Region.create(name: "x")
    value(state_2).must_be :invalid?
  end
end
