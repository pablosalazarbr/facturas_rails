json.extract! factura, :id, :serie_documento, :cliente_id, :observaciones, :total, :user_id, :created_at, :updated_at
json.url factura_url(factura, format: :json)
