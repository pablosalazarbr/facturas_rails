json.extract! cliente, :id, :nombre, :email, :nit, :limite_credito, :activo, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
