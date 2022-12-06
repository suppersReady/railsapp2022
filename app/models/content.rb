class Content < ApplicationRecord
	extend FriendlyId
	friendly_id :titolo, use: :slugged

	belongs_to :utenti, :optional => true

	has_many :sales

	validates :titolo, :descrizione, :price, presence: true
	validates :price, numericality: { greater_than: 49 }
end
