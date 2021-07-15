require 'yaml'
require 'active_support'
require 'active_support/time'

class Practice
  @@user_with_name_alex = []
  def fetching_data
    users = YAML.load_file('users_data.yaml')
    users.map do |user|
      display_all_user(user)
      display_user_full_name(user)
      display_buyer_or_seller_name(user)
      display_age_of_user(user)
    end
  end

  def display_all_user(user_name)
    puts "User name #{user_name[:first_name]}"
  end

  def display_user_full_name(name_of_user)
    puts "This User full name #{(name_of_user[:first_name] +' '+ name_of_user[:last_name]).titleize}"
  end

  def display_buyer_or_seller_name(check_role)
    puts "This User role #{check_role[:role]}"
  end

  def display_age_of_user(data)
    puts "Age #{Time.now.year - data[:date_of_birth].to_s.to_datetime.year}"
  end

  def all_list
    puts 'User with firstname Alex'
    @@user_with_name_alex.each { |user| puts "#{user}" }
  end
end

class Product
  def fetch_product
    products = YAML.load_file('products_data.yaml')
    puts 'List Of Products Available'
    products.each { |product| puts "#{product[:name]}" }
  end
end
n = Practice.new
n.fetching_data
n.all_list
d = Product.new
d.fetch_product
