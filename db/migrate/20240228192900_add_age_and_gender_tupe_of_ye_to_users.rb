class AddAgeAndGenderTupeOfYeToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :typeOfYe, :integer
  end
end
