class HospitalPricing < ActiveRecord::Base

  attr_accessible :average_covered, :procedure, :provider_adress, :provider_city, :provider_name, :provider_state, :provider_zipcode, :total_discharge, :total_payment


  def self.get_hospital_info
    # @@db = SQLite3::Database.new("test/test.db")

    #Accepts Any URL now
    #split_name = name.split
    #join_name = split_name.join("%20")
    # soda_data = HTTParty.get("https://data.cms.gov/api/views/97k6-zzx3/rows.json?accessType=DOWNLOAD")
    soda_data = File.open("test/fixtures/hospital.json","r").read
    hospital_info = JSON(soda_data)
    i = 0
    while hospital_info["data"].count >= i do
        h = HospitalPricing.new
        h.procedure = hospital_info["data"][i][8]
        h.provider_name = hospital_info["data"][i][10]
        h.provider_adress = hospital_info["data"][i][11]
        h.provider_city = hospital_info["data"][i][12]
        h.provider_state = hospital_info["data"][i][13]
        h.provider_zipcode = hospital_info["data"][i][14]
        h.total_discharge = hospital_info["data"][i][16]
        h.average_covered = hospital_info["data"][i][17]
        h.total_payment = hospital_info["data"][i][18]
        h.save
        puts "#{i}"
        i += 1
    end
  end
end
