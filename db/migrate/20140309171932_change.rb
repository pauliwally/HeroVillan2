class Change < ActiveRecord::Migration

#   TO CHANGE COLUMN (OR ROW) IN MODEL:
  # 1. In Terminal, type: "rails generate migration Change".  Title (Change) can be any thing.
  # 2. Add code to that new migration file (see text below).
  # 3. IN TERMINAL TYPE "RAKE DB:MIGRATE".  CHECK THE DB/SCHEMA FILE TO SEE CHANGE MADE.


  def change
    remove_column :brands, :category_id, :integer
    add_column :brands, :category_name, :string
  end
end
