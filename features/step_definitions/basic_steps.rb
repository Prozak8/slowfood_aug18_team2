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

Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
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

