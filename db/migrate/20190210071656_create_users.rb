class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :mail
      t.text :description

      t.timestamps
    end
  end
end
