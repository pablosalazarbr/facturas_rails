class AddEmailToCliente < ActiveRecord::Migration[6.1]
  def change
    add_column :clientes, :email, :string
  end
end
