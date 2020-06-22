class CreateMediasOutlets < ActiveRecord::Migration[5.1]
    def change 
        create_table :media_outlets do |t|
            t.string :name
            t.string :owner
            t.string :type_of_business
            t.string :neighborhood
            t.string :website
            t.string :instagram
        end
    end
end