class Provider < ActiveRecord::Base
  attr_accessible :adress, :city, :name, :state, :zipcode
  has_many :procedures, :through => :operations
  has_many :operations

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
