class HospitalPricingsController < ApplicationController
  def search

    # @info = HospitalPricing.search(params[:procedure], :page => params[:page], :per_page => 5)
   
     @results = Procedure.search(params[:soda_data])

    @hospital  = Provider.search(params[:soda_data])


  end
end
