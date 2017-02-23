class Store
  def initialize(raw_store_data)
    @_long_name = raw_store_data["longName"]
    @_city = raw_store_data["city"]
    @_distance = raw_store_data["distance"]
    @_phone_number = raw_store_data["phone"]
    @_store_type = raw_store_data["storeType"]
  end

  def long_name
    @_long_name
  end

  def city
    @_city
  end

  def distance
    @_distance
  end

  def phone_number
    @_phone_number
  end

  def store_type
    @_store_type
  end
end