class Provider < ActiveRecord::Base
  attr_accessible :adress, :city, :name, :state, :zipcode
  has_many :procedures, :through => :operations
  has_many :operations


  # def self.get_provider_info

  #   soda_data = File.open("test/fixtures/hospital.json","r").read
  #   provider_info = JSON(soda_data)
  #   i = 0
  #   while provider_info["data"].count >= i do
  #       r = Provider.new
  #       r.name = hospital_info["data"][i][10]
  #       r.adress = hospital_info["data"][i][11]
  #       r.city = hospital_info["data"][i][12]
  #       r.state = hospital_info["data"][i][13]
  #       r.zipcode = hospital_info["data"][i][14]
  #       r.save
  #       puts"#{i}"
  #       i += 1
  #   end
  # end

  def self.from_json(json)
    r = Provider.find_or_initialize_by_name(json[10])    
    r.adress = json[11]
    r.city = json[12]
    r.state = json[13]
    r.zipcode = json[14]
    r.save!
    r
  end
end
