class Plant < ApplicationRecord

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |mango|
        csv << product.attributes.values_at(*column_name)
      end
    end
  end


# import data
def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    Plant.create row.to_hash
  end
end



#   attr_accessor :name, :planted, :harvested, :active, :comments
#
#   def self.to_csv(options = {})
#     CSV.generate(options) do |csv|
#       csv << column_names
#       all.each do |plant|
#         csv << plant.attributes.values_at(*column_names)
#       end
#     end
#   end
#
#   def self.import(file)
#     spreadsheet = Roo::Spreadsheet.open(file.path)
#     header = spreadsheet.row(1)
#      (2..spreadsheet.last_row).each do |i|
#        row = Hash[[header, spreadsheet.row(i)].transpose]
#       @plant = find_by(id: row["id"]) || new
#       @plant.attributes = row.to_hash
#       @plant.save!
#     end
#   end
#
# def self.open_spreadsheet(file)
#   case File.extname(file.original_filename)
#   when ".csv" then CSV.new(file.path, nil.to_hash)
#   when ".xls" then Excel.new(file.path, nil, :ignore)
#   when ".xlsx" then Excelx.new(file.path, nil, :ignore)
#   else raise "Unknown file type: #{file.original_filename}"
#   end
# end

end
