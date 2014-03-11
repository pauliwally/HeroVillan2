class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :brand_name
      t.string :category_id
      t.integer :company_id
      t.timestamps
    end
  end
end
