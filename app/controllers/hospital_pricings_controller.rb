class HospitalPricingsController < ApplicationController
  def search
    @results = HospitalPricing.search(params[:procedures], :page => params[:page], :per_page => 5)
    # HospitalPricing.paginate(:page => params[:page])
  end
end
