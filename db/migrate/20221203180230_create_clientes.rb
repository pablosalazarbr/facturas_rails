class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :email
      t.string :nit
      t.float :limite_credito
      t.boolean :activo

      t.timestamps
    end
  end
end
