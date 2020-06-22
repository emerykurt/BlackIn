require 'csv'
CSV.foreach('csv_folder/Eateries.csv') do |row|
  name = row[1]
  owner = row[2]
  type_of_food = row[3]
  neighborhood = row[4]
  address = row[5]
  website = row[6]
  instagram = row[7]
  Spill.create(name: name, owner: owner, type_of_food: type_of_food, neighborhood: neighborhood, address: address, website: website, instagram: instagram) 
end

CSV.foreach('csv_folder/Fitness.csv') do |row|
    name = row[1]
    owner = row[2]
    specialty = row[3]
    neighborhood = row[4]
    address = row[5]
    website = row[6]
    instagram = row[7]
    Spill.create(name: name, owner: owner, specialty: specialty, neighborhood: neighborhood, address: address, website: website, instagram: instagram) 
end

CSV.foreach('csv_folder/Media_Outlets.csv') do |row|
    name = row[1]
    owner = row[2]
    type_of_business = row[3]
    neighborhood = row[4]
    address = row[5]
    website = row[6]
    instagram = row[7]
    Spill.create(name: name, owner: owner, type_of_business: type_of_business, neighborhood: neighborhood, address: address, website: website, instagram: instagram) 
end

CSV.foreach('csv_folder/Musicians_Artists.csv') do |row|
    name = row[1]
    owner = row[2]
    type_of_business = row[3]
    neighborhood = row[4]
    address = row[5]
    website = row[6]
    instagram = row[7]
    Spill.create(name: name, owner: owner, type_of_business: type_of_business, neighborhood: neighborhood, address: address, website: website, instagram: instagram) 
end

CSV.foreach('csv_folder/Other.csv') do |row|
    name = row[1]
    owner = row[2]
    type_of_business = row[3]
    neighborhood = row[4]
    address = row[5]
    website = row[6]
    instagram = row[7]
    Spill.create(name: name, owner: owner, type_of_business: type_of_business, neighborhood: neighborhood, address: address, website: website, instagram: instagram) 
end

CSV.foreach('csv_folder/Pets.csv') do |row|
    name = row[1]
    owner = row[2]
    type_of_business = row[3]
    neighborhood = row[4]
    address = row[5]
    website = row[6]
    instagram = row[7]
    Spill.create(name: name, owner: owner, type_of_business: type_of_business, neighborhood: neighborhood, address: address, website: website, instagram: instagram) 
end

CSV.foreach('csv_folder/Professional_Services.csv') do |row|
    name = row[1]
    owner = row[2]
    type_of_business = row[3]
    neighborhood = row[4]
    address = row[5]
    website = row[6]
    instagram = row[7]
    Spill.create(name: name, owner: owner, type_of_business: type_of_business, neighborhood: neighborhood, address: address, website: website, instagram: instagram) 
end

CSV.foreach('csv_folder/Retailers.csv') do |row|
    name = row[1]
    owner = row[2]
    type_of_business = row[3]
    neighborhood = row[4]
    address = row[5]
    website = row[6]
    instagram = row[7]
    Spill.create(name: name, owner: owner, type_of_business: type_of_business, neighborhood: neighborhood, address: address, website: website, instagram: instagram) 
end