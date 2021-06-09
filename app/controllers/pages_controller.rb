class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  layout "devise", only: [:contact, :presentation, :privacy, :terms]

  def index
    @page = Page.all
  end

  def show
    @page = Page.find(params[:id])
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

  def test
  end

  def about

    @page = Page.find_by name:'about'
    render :layout => 'application-pink'
  end

  def contact
    @page = Page.find_by name:'contact'
  end

  def presentation
    @page = Page.find_by name:'presentation'
  end

  def privacy
    @page = Page.find_by name:'privacy'
  end

  def terms
    @page = Page.find_by name:'terms'
  end

  private

  def page_params
    params.require(:page).permit(:content, :name)
  end
end
