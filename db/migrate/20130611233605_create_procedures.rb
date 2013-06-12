class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :total_payment
      t.string :average_covered
      t.string :procedure

      t.timestamps
    end
  end
end
