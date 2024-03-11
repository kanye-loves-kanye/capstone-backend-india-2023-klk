User.create(username: 'user1', email: 'user1@example.com', password: 'password1', age: 25, gender: 'Male', typeOfYe: 'Type1')
User.create(username: 'user2', email: 'user2@example.com', password: 'password2', age: 30, gender: 'Female', typeOfYe: 'Type2')
# Add more users as needed

# Create collections
Collection.create(user_id: 1, item: 'item1', size: 'Small')
Collection.create(user_id: 1, item: 'item2', size: 'Medium')
Collection.create(user_id: 2, item: 'item3', size: 'Large')

