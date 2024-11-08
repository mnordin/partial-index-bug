class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.boolean :active, null: false
      t.index :active, where: "active IS TRUE"
      t.timestamps
    end
  end
end
