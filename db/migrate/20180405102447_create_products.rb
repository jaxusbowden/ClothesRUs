class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :cost
      t.string :type
      t.string :image

      t.timestamps
    end
  end
end
