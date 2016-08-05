class ContentsController < ApplicationController
  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)

    if @content.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @content = Content.find(params[:id])
  end

  def index
    @contents = Content.all
  end

  private

  def content_params
    params.require(:content).permit(:title, :url, :content)
  end


end
