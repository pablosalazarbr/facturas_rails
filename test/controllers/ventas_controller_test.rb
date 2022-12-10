require "test_helper"

class VentasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @venta = ventas(:one)
  end

  test "should get index" do
    get ventas_url
    assert_response :success
  end

  test "should get new" do
    get new_venta_url
    assert_response :success
  end

  test "should create venta" do
    assert_difference('Venta.count') do
      post ventas_url, params: { venta: { factura_id: @venta.factura_id, producto_id: @venta.producto_id } }
    end

    assert_redirected_to venta_url(Venta.last)
  end

  test "should show venta" do
    get venta_url(@venta)
    assert_response :success
  end

  test "should get edit" do
    get edit_venta_url(@venta)
    assert_response :success
  end

  test "should update venta" do
    patch venta_url(@venta), params: { venta: { factura_id: @venta.factura_id, producto_id: @venta.producto_id } }
    assert_redirected_to venta_url(@venta)
  end

  test "should destroy venta" do
    assert_difference('Venta.count', -1) do
      delete venta_url(@venta)
    end

    assert_redirected_to ventas_url
  end
end
