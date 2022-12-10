class CreateVentas < ActiveRecord::Migration[6.1]
  def change
    create_table :ventas do |t|
      t.references :producto, null: false, foreign_key: true
      t.references :factura, null: false, foreign_key: true

      t.timestamps
    end
  end
end
