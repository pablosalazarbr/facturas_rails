json.extract! venta, :id, :producto_id, :factura_id, :created_at, :updated_at
json.url venta_url(venta, format: :json)
