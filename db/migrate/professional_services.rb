class CreateProfessionalServices < ActiveRecord::Migration[5.1]
    def change 
        create_table :professional_services do |t|
            t.string :name
            t.string :owner
            t.string :service 
            t.string :neighborhood
            t.string :address
            t.string :website
            t.string :instagram
        end
    end
end