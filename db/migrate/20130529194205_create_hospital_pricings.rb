class CreateHospitalPricings < ActiveRecord::Migration
  def change
    create_table :hospital_pricings do |t|
      t.string :provider_name
      t.string :provider_adress
      t.string :provider_city
      t.string :provider_state
      t.string :provider_zipcode
      t.string :total_discharge
      t.string :average_covered
      t.string :total_payment

      t.timestamps
    end
  end
end
