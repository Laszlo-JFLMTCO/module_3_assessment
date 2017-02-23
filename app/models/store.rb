class Store
  def initialize(raw_store_data)
    @_long_name = raw_store_data["longName"]
    @_city = raw_store_data["city"]
  end

  def long_name
    @_long_name
  end

  def city
    @_city
  end
end