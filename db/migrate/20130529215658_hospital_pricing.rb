class HospitalPricing < ActiveRecord::Migration
  def up
  	add_column :hospital_pricings, :procedure, :string
  end

  def down
  	remove_column :hospital_pricings, :procedure
  end
end
