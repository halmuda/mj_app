class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|
      t.string  :name, null: false
      t.text :description
      t.timestamps
    end
  end
end
