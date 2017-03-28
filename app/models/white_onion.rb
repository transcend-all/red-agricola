class WhiteOnion < ApplicationRecord

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |whiteonion|
        csv << product.attributes.values_at(*column_name)
      end
    end
  end


# import data
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      WhiteOnion.create! row.to_hash
    end
  end

end
