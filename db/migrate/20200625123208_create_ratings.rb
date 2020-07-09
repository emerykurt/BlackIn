class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :eatery_id
      t.string :eatery_name
      t.integer :customer_service
      t.integer :product_quality
      t.integer :checkout_experience
      t.integer :overall_experience
    end
  end
end
