Then("I should see {string} for {string}") do |content, product_name|
  product = Product.find_by(name: product_name)
  within("#product_#{product.id}") do 
    expect(page).to have_content content
  end
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end 

When("I click {string} button") do |link_name|
  click_on link_name
end

Then("I should be on product page") do
  visit products_path
end
 Then("I should be on login page") do
  visit new_user_session_path
end
 Then("I should be on signup page") do
  visit new_user_registration_path
end 

When("I click {string} button") do |link_name|
  click_on link_name
end