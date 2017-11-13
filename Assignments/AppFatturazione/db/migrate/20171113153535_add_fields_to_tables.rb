class AddFieldsToTables < ActiveRecord::Migration[5.1]
  def change
    add_reference :hours, :user, foreign_key: true
    add_reference :hours, :client, foreign_key:true
    add_reference :clients, :user, foreign_key: true
  end
end
