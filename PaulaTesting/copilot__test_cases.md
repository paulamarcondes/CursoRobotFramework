Feature: User Registration
Scenario: Successful user registration
Given: The user is on the registration page
When: The user fills in all required fields and submits the form
Then: The user should see a registration success message

Feature: User Login
Scenario: Successful login with valid credentials
Given: The user is on the login page
When: The user enters valid credentials and submits the form
Then: The user should be redirected to the home page

Feature: User Logout
Scenario: Successful logout
Given: The user is logged in
When: The user clicks on the logout button
Then: The user should be redirected to the login page

Feature: Product Search
Scenario: Search for a product by name
Given: The user is on the home page
When: The user enters a product name in the search bar and clicks search
Then: The user should see a list of products matching the search criteria

Feature: Product Details
Scenario: View product details
Given: The user is on the product listing page
When: The user clicks on a product
Then: The user should be redirected to the product details page

Feature: Add to Cart
Scenario: Add a product to the cart
Given: The user is on the product details page
When: The user clicks on the "Add to Cart" button
Then: The product should be added to the cart

Feature: View Cart
Scenario: View items in the cart
Given: The user has added products to the cart
When: The user navigates to the cart page
Then: The user should see a list of products added to the cart

Feature: Update Cart
Scenario: Update the quantity of a product in the cart
Given: The user is on the cart page
When: The user updates the quantity of a product and clicks update
Then: The cart should reflect the updated quantity

Feature: Remove from Cart
Scenario: Remove a product from the cart
Given: The user is on the cart page
When: The user clicks on the remove button next to a product
Then: The product should be removed from the cart

Feature: Checkout Process
Scenario: Successful checkout
Given: The user has products in the cart
When: The user proceeds to checkout and fills in the required information
Then: The user should see an order confirmation message

Feature: User Profile Update
Scenario: Update user profile information
Given: The user is logged in and on the profile page
When: The user updates their profile information and saves the changes
Then: The user should see a profile update success message

Feature: Password Reset
Scenario: Successful password reset
Given: The user is on the password reset page
When: The user enters their email address and submits the form
Then: The user should receive a password reset email

Feature: Product Reviews
Scenario: Submit a product review
Given: The user is logged in and on the product details page
When: The user submits a review for the product
Then: The review should be displayed under the product reviews section

Feature: Wishlist
Scenario: Add a product to the wishlist
Given: The user is logged in and on the product details page
When: The user clicks on the "Add to Wishlist" button
Then: The product should be added to the user's wishlist

Feature: Apply Discount Code
Scenario: Apply a valid discount code during checkout
Given: The user has products in the cart and is on the checkout page
When: The user enters a valid discount code and applies it
Then: The discount should be applied to the total order amount

Feature: Order History
Scenario: View order history
Given: The user is logged in and on the account page
When: The user navigates to the order history section
Then: The user should see a list of their past orders

Feature: Filter Products
Scenario: Filter products by category
Given: The user is on the product listing page
When: The user selects a category filter
Then: The user should see a list of products within the selected category

Feature: Sort Products
Scenario: Sort products by price
Given: The user is on the product listing page
When: The user selects a sort option for price
Then: The user should see products sorted by price in the selected order

Feature: Payment Method
Scenario: Add a new payment method
Given: The user is logged in and on the payment methods page
When: The user adds a new payment method and saves it
Then: The new payment method should be listed under the user's payment methods

Feature: Address Book
Scenario: Add a new shipping address
Given: The user is logged in and on the address book page
When: The user adds a new shipping address and saves it
Then: The new address should be listed under the user's shipping addresses