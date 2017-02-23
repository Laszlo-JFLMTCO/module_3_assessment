require 'rails_helper'

RSpec.describe '/api/v1/items' do
  scenario 'get items' do
    # When I send a GET request to `/api/v1/items`
    get "/api/v1/items"

    response = JSON.parse(response.body)

    # I receive a 200 JSON response containing all items
    expect(page).to have_http_status(200)
    # And each item has an id, name, description, and image_url but not the created_at or updated_at
    expect(response).to have_key("id")
    expect(response).to have_key("name")
    expect(response).to have_key("description")
    expect(response).to have_key("image_url")
    expect(response).not_to have_key("created_at")
    expect(response).not_to have_key("updated_at")
  end

# When I send a GET request to `/api/v1/items/1`
# I receive a 200 JSON response containing the id, name, description, and image_url but not the created_at or updated_at

# When I send a DELETE request to `/api/v1/items/1`
# I receive a 204 JSON response if the record is successfully deleted

# When I send a POST request to `/api/v1/items` with a name, description, and image_url
# I receive a 201 JSON  response if the record is successfully created
# And I receive a JSON response containing the id, name, description, and image_url but not the created_at or updated_at
end