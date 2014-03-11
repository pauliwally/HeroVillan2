class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_first
      t.string :user_last
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
