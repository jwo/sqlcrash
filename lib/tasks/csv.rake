# export our models to csv

desc 'Export All Models to csv'
task :export_csv => :environment do
  require 'csv'

  [Product, Customer, Order, OrderItem].each do |klass|

    klass.send(:build_csv)

  end

end
