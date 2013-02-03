Given /^the exercise has related equipment products$/ do
  @product = build :product
  @equipment_product = build :equipment_product, product: @product
end