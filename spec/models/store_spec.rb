require 'rails_helper'

RSpec.describe 'Store' do
  let(:raw_store_data) {{"storeId"=>2740,
                          "storeType"=>"Mobile SAS",
                          "tradeIn"=>nil,
                          "name"=>"CHERRY CREEK MALL",
                          "longName"=>"BEST BUY MOBILE - CHERRY CREEK SHOPPING CENTER",
                          "address"=>"3000 EAST FIRST AVE",
                          "address2"=>"STE 296",
                          "city"=>"DENVER",
                          "region"=>"CO",
                          "fullPostalCode"=>"80206-5637",
                          "country"=>"US",
                          "lat"=>39.71603,
                          "lng"=>-104.95247,
                          "hours"=>
                            "Sun: 11-6; Mon: 10-9; Tue: 10-9; Wed: 10-9; Thurs: 10-9; Fri: 10-9; Sat: 10-9; Sun: 11-6; Mon: 10-9; Tue: 10-9; Wed: 10-9; Thurs: 10-9; Fri: 10-9; Sat: 10-9",
                          "hoursAmPm"=>
                            "Sun: 11am-6pm; Mon: 10am-9pm; Tue: 10am-9pm; Wed: 10am-9pm; Thurs: 10am-9pm; Fri: 10am-9pm; Sat: 10am-9pm; Sun: 11am-6pm; Mon: 10am-9pm; Tue: 10am-9pm; Wed: 10am-9pm; Thurs: 10am-9pm; Fri: 10am-9pm; Sat: 10am-9pm",
                          "gmtOffset"=>-7,
                          "services"=>[{"service"=>"Trade-In"}],
                          "phone"=>"303-270-9189",
                          "postalCode"=>"80206",
                          "distance"=>3.45}}
  scenario 'Can initialize model with proper raw data' do
    test_store = Store.new(raw_store_data)

    expect(test_store.long_name).to eq("BEST BUY MOBILE - CHERRY CREEK SHOPPING CENTER")
    expect(test_store.city).to eq("DENVER")
    expect(test_store.distance).to eq("3.45")
    expect(test_store.phone_number).to eq("303-270-9189")
    expect(test_store.store_type).to eq("Mobile SAS")
  end

end