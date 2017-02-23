require 'rails_helper'

RSpec.describe '/api/v1/items' do
  it 'get items' do
    Item.create(name: 'sdfsdf', description: 'sdfsdf', image_url: 'sdfsdfsd')
    # When I send a DELETE request to `/api/v1/items/1`
    delete "/api/v1/items/1"

    # I receive a 204 JSON response if the record is successfully deleted
    expect(response).to have_http_status(204)
    expect(Item.count).to eq(0)
  end


# When I send a POST request to `/api/v1/items` with a name, description, and image_url
# I receive a 201 JSON  response if the record is successfully created
# And I receive a JSON response containing the id, name, description, and image_url but not the created_at or updated_at
end