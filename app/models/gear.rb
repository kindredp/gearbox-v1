class Gear < ActiveRecord::Base
	require 'csv'
	has_one_attached :photo

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Gear.create! row.to_hash
		end
	end
end
