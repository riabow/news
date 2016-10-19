#require 'csv'
class Company < ApplicationRecord
	def self.import(file)  
		CSV.foreach(file.path, headers: true) do |row|  
		     puts "#{row.to_hash}"
		     Company.create! row.to_hash
		end  
    end  
end
