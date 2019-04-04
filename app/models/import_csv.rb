class ImportCsv < ApplicationRecord
  def self.users_data
    path = File.join Rails.root, "db/csv_data/csv_data.csv"
    list = []
  
    CSV.foreach(path, headers: true) do |row|
      list << {
        name: row['name'],
        age: row['age'],
        address: row['address']
      }
    end

    puts"Import Started".red

    begin
      User.transaction do
        User.create!(list)
      end
      puts "Import ended".green
    rescue ActiveModel::UnKnownAttrbuteError => invalid
      puts "Import Failed : UnKnownAttrbuteError".red
    end
  end
end