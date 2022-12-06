class Sale < ApplicationRecord

	before_create :generate:guid
	belongs_to :content

	private
		def generate_guid
			self.guid = SecureRandom.uuid()
		end
end
