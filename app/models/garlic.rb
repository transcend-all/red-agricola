class Garlic < ApplicationRecord

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |garlic|
        csv << product.attributes.values_at(*column_name)
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Garlic.create! row.to_hash
    end
  end

end
