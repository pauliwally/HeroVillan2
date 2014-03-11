class Change1 < ActiveRecord::Migration
  def change
    remove_column :brands, :category_id, :integer
    add_column :brands, :category_name, :string
  end
end
