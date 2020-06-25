class CreateEateries < ActiveRecord::Migration
  def change
    create_table :eateries do |t|
      t.string :name
      t.string :owner
      t.string :type_of_food
      t.string :neighborhood
      t.string :address
      t.string :website
      t.string :instagram
    end
  end
end
