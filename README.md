Buyer/Seller:
first_name
last_name
date_of_birth
address
role
Here is the raw data regarding buyers and sellers:
[
 {:first_name => 'alex', :last_name => 'newman',  :date_of_birth =>
'01-05-  1982',  :address => 'sapna sangeeta', :role => 'buyer'},
 {:first_name => 'alex', :last_name => 'Panc',  :date_of_birth =>
'12-04-  1990',  :address => 'bhanwar kua', :role => 'seller'},
 {:first_name => 'Meena', :last_name => 'Pallanipppan',
:date_of_birth => '03-02-  1988',  :address => 'sapna sangeeta', :role
=> 'seller'},
 {:first_name => 'Prabhu', :last_name => 'Sharma',  :date_of_birth =>
'11-02-  1992',  :address => 'geeta bhawan', :role => 'seller'},
 {:first_name => 'Sundar', :last_name => 'Pichai',  :date_of_birth =>
'11-05-1983',  :address => 'vijay nagar', :role => 'buyer'}
]
Products:
product_name
seller_name
price
category
Here is the raw data regarding products:
[
 {:name => 'bicycle', :seller => 'alex', price => 3000, category: 'vehicle'},
 {:name => 'car', :seller => 'meena', price => 250000, category: 'vehicle'},
 {:name => 'jeans', :seller => 'prabhu', price => 1800, category: 'clothes'},
 {:name => 'shirt', :seller => 'prabhu', price => 700, category: 'clothes'},
 {:name => 'blue shirt', :seller => 'prabhu', price => 1200, category:
'clothes' },
 {:name => 't-shirt', :seller => 'prabhu', price => 600, category: 'clothes'},
 {:name => 'capri', :seller => 'prabhu', price => 300, category: 'clothes'},
 {:name => 'bike', :seller => 'meena', price => 60000, category: 'vehicle'},
 {:name => 'scooter', :seller => 'meena', price => 25000, category: 'vehicle'},
 {:name => 'maruti', :seller => 'meena', price => 400000, category: 'vehicle'},
 {:name => 'auto', :seller => 'meena', price => 100000, category: 'vehicle'},
 {:name => 'sweter', :seller => 'prabhu', price => 1200, category: 'clothes'},
 {:name => 'jacket', :seller => 'prabhu', price => 3500, category: 'clothes'},
 {:name => 'hat', :seller => 'prabhu', price => 400, category: 'clothes'},
 {:name => 'doll', :seller => 'alex', price => 350, category: 'toys'},
 {:name => 'toy car', :seller => 'alex', price => 250, category: 'toys'},
 {:name => 'bat', :seller => 'alex', price => 700, category: 'toys'},
 {:name => 'ball', :seller => 'alex', price => 20, category: 'toys'},
 {:name => 'batman', :seller => 'alex', price => 300, category: 'toys'},
 {:name => 'barbi doll', :seller => 'alex', price => 3000, category: 'toys'}
]
# Find below the functionality, that you need to implement for given scenario:
- Scenario: Take the list of all the users and return array of user
objects correspond to the list.
- Parameters: list of all the users(hash) given above.
- Output: Return list of user objects
- Scenario: Take the list of all the products and return array of
product objects correspond to the given list.
- Parameters: list of all the products(hash) given above.
- Output: Return list of product objects
- Scenario: Write method to get the full name of buyer (ex: suppose
:first_name => 'alex' and  :last_name => 'newman'  of user, then full
name would be 'Alex Neewman')
- Parameters: A buyer record for ex: {:first_name => 'Sundar',
:last_name => 'Pichai',  :date_of_birth => '11-05-1983',  :address =>
'vijay nagar', :role => 'buyer'}
- Output: "Sundar Pichai"
- Scenario: Write method to get the full name of buyer/seller
 (ex: suppose :first_name => 'alex' and  :last_name => 'newman'  of
user, then full name would be 'Alex Neewman')
- Scenario: Write method to find the age of buyer/seller on the basis
of his date_of_birth
- Parameter: A buyer/seller record for ex: {:first_name => 'Sundar',
:last_name => 'Pichai',  :date_of_birth => '11-05-1983',  :address =>
'vijay nagar', :role => 'buyer'}
- Output: Return age of user after calculating from date_of_birth
- Scenario: Write a method in Buyer class, which will take all the
users list as input and return buyers only
- Paramters: All the users given above
- Output: return array of all the buyer objects
- Scenario: Write a method in Seller class, which will take all the
users list as input and return buyers only
- Paramters: All the users given above
- Output: return array of all the seller objects
- Scenario: Find all the users, whose first name is 'alex'
- Paramters: All the users list given above
- Output: return array of all the user objects whose first name is alex