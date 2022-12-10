class CreateFacturas < ActiveRecord::Migration[6.1]
  def change
    create_table :facturas do |t|
      t.string :serie_documento
      t.references :cliente, null: false, foreign_key: true
      t.string :observaciones
      t.float :total
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
