class HospitalPricingsController < ApplicationController
  def search
    if params[:hospital_info]
    @results = HospitalPricing.search(params[:hospital_info], :page => params[:page], :per_page => 5)
    elsif params[:procedure]
    @results = HospitalPricing.search(params[:procedures], :page => params[:page], :per_page => 5)
    elsif params[:zip]
    @results = HospitalPricing.search(params[:zip], :page => params[:page], :per_page => 5)
    end
    # HospitalPricing.paginate(:page => params[:page])
  end
end
