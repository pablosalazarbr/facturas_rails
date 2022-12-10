class CreateProductos < ActiveRecord::Migration[6.1]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :descripcion
      t.float :precio

      t.timestamps
    end
  end
end
