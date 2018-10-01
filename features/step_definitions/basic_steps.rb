Given("the following products exists") do |table|
  table.hashes.each do |product_hash|    
    category = Category.find_by(name: product_hash[:category])
    product_hash.except!("category")
    create(:product, product_hash.merge(category: category))    
  end  
end

Given("the following categories exists") do |table|
  table.hashes.each do |category_hash|    
    create(:category, category_hash)
  end 
end

Given("I visit the landing page") do
  visit root_path
end 

Given("I visit the product page") do
  visit products_path
end

Then("stop") do
  binding.pry
end

When("I click {string} button on {string} product") do |link_name, product_name|
  product = Product.find_by(name: product_name)
  within("#product_#{product.id}") do 
    click_on link_name
  end  
end

Given("the following users exist") do |table|
  table.hashes.each do |user_hash|
    create(:user, user_hash)
  end
  
end

Given("I am logged in as {string}") do |user_name|
  @user = User.find_by(name: user_name)
  login_as @user
end

When("I click {string} button") do |link_name|
  click_on link_name
end