require 'rails_helper'


  RSpec.describe Collection, type: :model do
    let(:user) { User.create(
      username: 'user1',
      email: 'user1@example.com',
      password: 'password1',
      age: 25,
      gender: 'Male',
      typeOfYe: 'Type1',
      )
    }

  it 'should validate item' do
    collection = user.collections.create(
      size: 'Small',
    )
    expect(collection.errors[:item]).to_not be_empty
  end

  it 'should validate item' do
    collection = user.collections.create(
      item: 'item1',
    )
    expect(collection.errors[:size]).to_not be_empty
  end
end