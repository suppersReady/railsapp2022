class Content < ApplicationRecord
	belongs_to :utenti, :optional => true

	validates :titolo, :descrizione, :price, presence: true
	validates :price, numericality: { greater_than: 0 }
end
