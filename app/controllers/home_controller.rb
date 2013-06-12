class HomeController < ApplicationController
  def index
      @hospital = HospitalPricing.search(params[:procedures],:page => params[:page], :per_page => 100)
  end
end
