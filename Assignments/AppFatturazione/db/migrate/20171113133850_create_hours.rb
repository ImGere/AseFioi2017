class CreateHours < ActiveRecord::Migration[5.1]
  def change
    create_table :hours do |t|
      t.text :description
      t.timestamps
    end
  end
end
