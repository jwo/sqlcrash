class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.build_csv
    require 'csv'

    CSV.open("#{table_name}.csv", "wb") do |csv|

      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end

  end

end
