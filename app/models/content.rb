class Content < ApplicationRecord
	belongs_to :utenti, :optional => true
end
