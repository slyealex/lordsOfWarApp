class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
  end

  def index
    # Static page for store location
  end

  def tournaments

  end
end
