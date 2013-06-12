class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :adress
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :name

      t.timestamps
    end
  end
end
