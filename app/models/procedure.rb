class Procedure < ActiveRecord::Base
  attr_accessible :average_covered, :procedure, :total_payment
  has_many :providers, :through => :operations
  has_many :operations

  def self.get_procedure_info
    soda_data = File.open("test/fixtures/hospital.json","r").read
    procedure_info = JSON(soda_data)
    i = 0
    while procedure_info["data"].count >= i do
        p = Procedure.find_or_initialize_by_procedure(hospital_info["data"][i][8])
        p.average_covered = hospital_info["data"][i][17]
        p.total_payment = hospital_info["data"][i][18]        
        p.operations << Operation.new(:provider => Provider.from_json(hospital_info["data"][i]))
        p.save!
        puts "#{i}"

        i +=1
    end
  end
end
