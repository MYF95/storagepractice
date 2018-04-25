class Statement < ApplicationRecord

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      record = Statement.find_by(id: row["id"]) || new
      record.update row.to_hash
      record.save!
    end
  end

  def self.to_csv
    attributes = %w{id date amount description}
    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |statement|
        csv << statement.attributes.values_at(*attributes)
      end
    end
  end
end
