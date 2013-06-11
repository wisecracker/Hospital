class HospitalPricingsController < ApplicationController
  def search
    @results = HospitalPricing.search(params[:procedures])
  end
end
