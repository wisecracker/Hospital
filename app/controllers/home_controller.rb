class HomeController < ApplicationController
  def index
      @hospital = HospitalPricing.search
  end
end
