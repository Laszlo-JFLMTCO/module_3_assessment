class Api::V1::ItemsController < ApplicationController
  def index
    render :json => Item.all, :status => 200
  end

  def show
    render :json => Item.find(params[:id]), :status => 200
  end

  def create
    new_item = Item.new_item
    new_item.name = 
    new_item.description = 
    new_item.image_url =
    if new_item.save then
      render :json => Item.last, :status => 201
    end
  end

  def destroy
    render :json => {}, :status => 204 if Item.delete(params[:id])>0
  end
end