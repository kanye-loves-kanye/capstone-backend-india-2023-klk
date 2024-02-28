class CreateCollections < ActiveRecord::Migration[7.1]
  def change
    create_table :collections do |t|
      t.references :user, null: false, foreign_key: true
      t.string :item
      t.string :size

      t.timestamps
    end
  end
end
