require "spec_helper"

describe MaxMindDB::GeoIP2::City do
  it "has a version number" do
    expect(MaxMindDB::GeoIP2::City::VERSION).not_to be nil
  end

  let (:default_db) { MaxMindDB.default_city_db }

  it "creates a client based on the default db" do
    expect(default_db.class).to eq(MaxMindDB::Client)
  end

  it "supports city lookup" do
    result = default_db.lookup('2601:600:9680:7420:2110:f421:efed:3837')
    expect(result.city_name_full).to eq("Bothell, WA")
  end
end
