require "application_system_test_case"

class VentasTest < ApplicationSystemTestCase
  setup do
    @venta = ventas(:one)
  end

  test "visiting the index" do
    visit ventas_url
    assert_selector "h1", text: "Ventas"
  end

  test "creating a Venta" do
    visit ventas_url
    click_on "New Venta"

    fill_in "Factura", with: @venta.factura_id
    fill_in "Producto", with: @venta.producto_id
    click_on "Create Venta"

    assert_text "Venta was successfully created"
    click_on "Back"
  end

  test "updating a Venta" do
    visit ventas_url
    click_on "Edit", match: :first

    fill_in "Factura", with: @venta.factura_id
    fill_in "Producto", with: @venta.producto_id
    click_on "Update Venta"

    assert_text "Venta was successfully updated"
    click_on "Back"
  end

  test "destroying a Venta" do
    visit ventas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Venta was successfully destroyed"
  end
end
