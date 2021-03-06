require 'rails_helper'

RSpec.describe '/api/v1/items' do
  it 'get items' do
    Item.create(name: 'sdfsdf', description: 'sdfsdf', image_url: 'sdfsdfsd')
    # When I send a GET request to `/api/v1/items/1`
    get "/api/v1/items/1"

    item = JSON.parse(response.body)

    # I receive a 200 JSON response containing the id, name, description, and image_url but not the created_at or updated_at
    expect(response).to have_http_status(200)
    expect(item).to have_key("id")
    expect(item).to have_key("name")
    expect(item).to have_key("description")
    expect(item).to have_key("image_url")
    expect(item).not_to have_key("created_at")
    expect(item).not_to have_key("updated_at")
  end
end