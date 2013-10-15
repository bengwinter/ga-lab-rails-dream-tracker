class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.string :name
      t.string :description
      t.boolean :scary
      t.boolean :fun
      t.timestamps
    end
  end
end
