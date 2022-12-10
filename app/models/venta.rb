class Venta < ApplicationRecord
  belongs_to :producto
  belongs_to :factura
end
