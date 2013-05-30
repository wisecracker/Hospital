class HomeController < ApplicationController
  def index
  	
  	@my_data = HospitalPricing.get_procedure_info('bob')
  end
end
