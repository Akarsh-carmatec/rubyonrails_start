class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
