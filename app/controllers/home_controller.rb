class HomeController < ApplicationController
  def index
      @results = Procedure.search(params[:search_box],:page => params[:page], :per_page => 100)
  end
end
