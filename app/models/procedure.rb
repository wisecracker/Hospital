class Procedure < ActiveRecord::Base
  attr_accessible :average_covered, :procedure, :total_payment, :provider
  has_many :providers, :through => :operations
  has_many :operations

  def self.get_procedure_info
    soda_data = File.open("test/fixtures/hospital.json","r").read
    procedure_info = JSON(soda_data)
    i = 0
    while procedure_info["data"].count >= i do
      begin
        p = Procedure.find_or_initialize_by_procedure(procedure_info["data"][i][8])
        r = Provider.from_json(procedure_info["data"][i]) 


        p.average_covered = procedure_info["data"][i][17]
        p.total_payment = procedure_info["data"][i][18]  
             
        p.operations << Operation.new(:provider_id => r.id)
        p.save!
        r.save! if r.new_record?
      rescue Exception => e
        puts "Couldnt save one #{e}"
      ensure
        puts "#{i}"
        i +=1
      end
    end
  end
end
