class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @page = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end
  
  def new
    @page = Page.new(page_params)
  end

  def create
    @page = Page.new(page_params)
    if @page.save!
      redirect_to root_url
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update(page_params)
      redirect_to root_url
    else
      render :new
    end
  end
  

  def home
  end

  def about
    @page = Page.find_by name:'about'
  end

  def contact
    @page = Page.find_by name:'contacts'
  end

  def presentation
    @page = Page.find_by name:'presentation'
  end

  private

  def page_params
    params.require(:page).permit(:content, :name)
  end
end
