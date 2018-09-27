Then("I should see {string} for {string}") do |content, product_name|
  product = Product.find_by(name: product_name)
  within("#product_#{product.id}") do 
    expect(page).to have_content content
  end
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end 




