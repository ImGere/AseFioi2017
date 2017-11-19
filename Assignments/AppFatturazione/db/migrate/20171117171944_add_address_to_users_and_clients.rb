class AddAddressToUsersAndClients < ActiveRecord::Migration[5.1]
  def up
    # add address of user
    add_column :users, :street_name, :string
    add_column :users, :street_number, :integer
    add_column :users, :postal_code, :integer
    add_column :users, :city, :string
    add_column :users, :state, :string
    # Add address to clients
    add_column :clients, :street_name, :string
    add_column :clients, :street_number, :integer
    add_column :clients, :postal_code, :integer
    add_column :clients, :city, :string
    add_column :clients, :state, :string
  end
  def down
    # remove address of user
    remove_column :users, :street_name
    remove_column :users, :street_number
    remove_column :users, :postal_code
    remove_column :users, :city
    remove_column :users, :state
    # remove address to clients
    remove_column :clients, :street_name
    remove_column :clients, :street_number
    remove_column :clients, :postal_code
    remove_column :clients, :city
    remove_column :clients, :state
  end
end
