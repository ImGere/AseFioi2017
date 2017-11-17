class AddIsFatturataToHours < ActiveRecord::Migration[5.1]
  def change
    add_column :hours, :is_fatturata, :boolean
  end
end
