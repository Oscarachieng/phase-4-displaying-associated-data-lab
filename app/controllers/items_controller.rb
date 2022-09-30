class ItemsController < ApplicationController

    #GET /index
    def index
        items = Item.all.order(price: :desc)
        render json: items, include: :user, status: :ok
    end
end
