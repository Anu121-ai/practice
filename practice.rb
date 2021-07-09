require 'yaml'
require 'byebug'
require 'active_support'
require 'active_support/time'

class Practice
  @@user_with_name_alex = []
  def fetching_data
    users = YAML.load_file('users_data.yaml')
    users.each { |user|
      display_all_user(user)
      display_buyer_or_seller_name(user)
      display_age_of_user(user)
    }
  end

  def display_all_user(user_name)
    puts "User name #{user_name[:first_name]}"
    @@user_with_name_alex << (user_name[:first_name] +" "+ user_name[:last_name]).titleize  if user_name[:first_name] == "alex"
  end

  def display_buyer_or_seller_name(check_buyer)
    if check_buyer[:role] == "buyer"
      puts "This user full name is #{(check_buyer[:first_name] +" "+ check_buyer[:last_name]).titleize}"
      puts "This user role #{check_buyer[:role]}"
    else 
      puts "This user full name is #{(check_buyer[:first_name] +" "+ check_buyer[:last_name]).titleize}"
      puts "This user role #{check_buyer[:role]}"
    end
  end

  def display_age_of_user(data)
    puts "Age #{Time.now.year - data[:date_of_birth].to_s.to_datetime.year}"
  end

  def all_list
    puts "User with firstname Alex"
    @@user_with_name_alex.each { |user|
      puts "#{user}"
    }
  end
end
class Product
  def fetch_product
    products = YAML.load_file('products_data.yaml')
    puts "List Of Products Available"
    products.each { |product| 
      puts "#{product[:name]}" 
    }
  end
end
n = Practice.new 
n.fetching_data
n.all_list
d = Product.new
d.fetch_product

