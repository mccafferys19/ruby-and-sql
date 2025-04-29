# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_salesperson = Salesperson.new
# puts new_salesperson.inspect
new_salesperson["first_name"]="Stephen"
new_salesperson["last_name"]="McCaffery"
new_salesperson["email"]="stephenmccaffery2@gmail.com"

new_salesperson.save
# p new_salesperson

new_salesperson = Salesperson.new
# puts new_salesperson.inspect
new_salesperson["first_name"]="Ally"
new_salesperson["last_name"]="Gsell"
new_salesperson["email"]="allysongsell1@gmail.com"

new_salesperson.save
# p new_salesperson

# 3. write code to display how many salespeople rows are in the database
no_of_salespeople = Salesperson.all.count
puts "Salespeople: #{no_of_salespeople}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
stephen = Salesperson.find_by({"first_name" => "Stephen", "last_name" => "McCaffery"})
# p stephen
stephen["email"]="mccafferys19@alumni.wlu.edu"
stephen.save
# p stephen
# p stephen["email"]

# CHALLENGE:
# 5. write code to display each salesperson's full name

salespeople = Salesperson.all # defines the collection

for salesperson in salespeople
    first_name = salesperson["first_name"]
    last_name = salesperson["last_name"]
    puts "#{first_name} #{last_name}"
end
# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
