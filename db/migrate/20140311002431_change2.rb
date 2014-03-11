class Change2 < ActiveRecord::Migration
  def change
    add_column :brands, :category_id, :integer
    remove_column :brands, :category_name, :string

  end
end
