class CreateCeos < ActiveRecord::Migration
  def change
    create_table :ceos do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
