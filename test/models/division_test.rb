require "test_helper"

describe Division do
  it "is valid with name" do
    region = Region.create(name: "x")
    division = Division.create(name: "y", region_id: region.id)
    value(division).must_be :valid?
  end

  it "is invalid without name" do
    region = Region.create(name: "x")
    division = Division.create(region_id: region.id)
    value(division).must_be :invalid?
  end

  it "is invalid without region" do
    region = Region.create(name: "x")
    division = Division.create(name: "y")
    value(division).must_be :invalid?
  end

  it "must have unique name" do
    division_1 = Division.create(name: "x")
    division_2 = Division.create(name: "x")
    value(division_2).must_be :invalid?
  end
end
