class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.integer :procedure_id
      t.integer :provider_id

      t.timestamps
    end
  end
end
