class CreateCheckinsAndRatings < ActiveRecord::Migration
  def change
    create_table :checkins_and_ratings do |t|
      t.integer :user_id
      t.integer :eatery_id
      t.boolean :checkin 
      t.integer :rating 
    end
  end
end
