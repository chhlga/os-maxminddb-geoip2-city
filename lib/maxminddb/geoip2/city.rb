require 'maxminddb/geoip2/city/version'
require 'maxminddb'

module MaxMindDB
  def MaxMindDB.default_city_db
    return @default_city_db if @default_city_db

    default_db_path = File.join(File.dirname(__FILE__), 'db', 'GeoIP2-City.mmdb')
    @default_city_db = MaxMindDB.new(default_db_path)
  end

  class Result
    def city_name
      if self.city
        self.city.name
      end
    end

    def state_code
      state = self.subdivisions.find{|s| s.iso_code.length == 2}
      if state
        state_code = state.iso_code
      end
    end
  end
end
