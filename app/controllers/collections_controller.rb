class CollectionsController < ApplicationController

    def index
    end
  
    def create
      puts
      collection = Collection.create(collection_params)

      if collection.valid?
        render json: collection
      else
        render json: collection.errors, status: 422
      end
    end

      private
    def collection_params
      params.require(:collection).permit(:item, :size, :user_id)
    end
  
  
end
