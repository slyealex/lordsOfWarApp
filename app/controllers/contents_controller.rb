class ContentsController < ApplicationController
  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    @content.user = current_user

    if @content.save!
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

  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    redirect_to contents_path, notice: "content deleted successfully"
  end

  private

  def content_params
    params.require(:content).permit(:title, :url, :content, :image)
  end


end
