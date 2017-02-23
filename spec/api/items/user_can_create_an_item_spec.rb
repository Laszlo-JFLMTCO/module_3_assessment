require 'rails_helper'

RSpec.describe '/api/v1/items' do
  it 'get items' do
    # When I send a POST request to `/api/v1/items` with a name, description, and image_url
    post "/api/v1/items"

    item = JSON.parse(response.body)

    # I receive a 201 JSON  response if the record is successfully created
    expect(response).to have_http_status(201)
    # And I receive a JSON response containing the id, name, description, and image_url but not the created_at or updated_at
    expect(Item.count).to eq(0)
    expect(item).to have_key("id")
    expect(item).to have_key("name")
    expect(item).to have_key("description")
    expect(item).to have_key("image_url")
    expect(item).not_to have_key("created_at")
    expect(item).not_to have_key("updated_at")
  end


end