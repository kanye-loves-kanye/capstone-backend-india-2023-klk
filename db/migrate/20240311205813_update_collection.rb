class UpdateCollection < ActiveRecord::Migration[7.1]
  def change
    rename_column :collections, :size, :caption 
  end
end
