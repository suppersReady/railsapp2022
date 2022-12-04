class AddUtenteIdToContents < ActiveRecord::Migration[7.0]
  def change
    add_column :contents, :utente_id, :integer
  end
end
