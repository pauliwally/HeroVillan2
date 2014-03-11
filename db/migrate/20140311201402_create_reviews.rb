class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :brand_id
      t.integer :hero_vote
      t.integer :villan_vote
      t.text :comment

      t.timestamps
    end
  end
end
