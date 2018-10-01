Then("I should see {string} for {string}") do |content, product_name|
  product = Product.find_by(name: product_name)
  within("#product_#{product.id}") do 
    expect(page).to have_content content
  end
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should be on product page") do
  expect(current_path).to eq products_path
end

Then("I should be on login page") do
  expect(current_path).to eq new_user_session_path
end

Then("I should be on signup page") do
  expect(current_path).to eq new_user_registration_path
end

Then("I should be on cart page") do
  expect(current_path).to eq cartify.cart_path
end