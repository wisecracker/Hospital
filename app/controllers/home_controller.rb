class HomeController < ApplicationController
  def index
      @hospital = HospitalPricing.search()
     HospitalPricing.paginate(:page => params[:page], :per_page => 5)
  end
end
