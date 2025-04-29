class RenameFirstAndLastNameInContacts < ActiveRecord::Migration[7.1]
  def change
    rename_column :contacts, :"first name", :first_name
    rename_column :contacts, :"last name", :last_name
  end
end
