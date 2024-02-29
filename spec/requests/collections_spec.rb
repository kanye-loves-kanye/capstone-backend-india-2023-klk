require 'rails_helper'

RSpec.describe "Collections", type: :request do
  let(:user) { User.create(
    username: 'user1',
    email: 'user1@example.com',
    password: 'password1',
    age: 25,
    gender: 'Male',
    typeOfYe: 'Type1',
    )
}
  describe "GET /index" do
    it 'gets a list of collections' do
      collection = user.collections.create(
        item: 'item1',
        size: 'Small'
      )
      get '/collections'

      collection = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(collection.first['item']).to eq('item1')
      expect(collection.first['size']).to eq('Small')
    end
  end
  
  describe "POST /create" do
    it 'creates a new collection' do 
      collection_params = {
        collection: {
          item: "item1",
          size: "Small",
          user_id: user.id
        }
      }
      p user
      post '/collections', params: collection_params

      expect(response).to have_http_status(200)
      json = JSON.parse(response.body)
      collection = Collection.first 
      p collection
      expect(collection['item']).to eq("item1")
      expect(collection['size']).to eq("Small")
      expect(collection['user_id']).to eq(user.id)
    end

    it "doesn't create a collection without a item" do
      collection_params = {
        collection: {
          size: "Small",
          user_id: user.id
        }
      }
      post '/collections', params: collection_params

      expect(response.status).to eq 422
      json = JSON.parse(response.body)
      expect(json['item']).to include "can't be blank"
    end
    it "doesn't create a collection without a size" do
      collection_params = {
        collection: {
          item: "item1",
          user_id: user.id
        }
      }
      post '/collections', params: collection_params
  
      expect(response.status).to eq 422
      json = JSON.parse(response.body)
      expect(json['size']).to include "can't be blank"
    end
  end
end