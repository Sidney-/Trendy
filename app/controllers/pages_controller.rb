require 'Aeditor'
class PagesController < ApplicationController

def index

  @AllSliders = Dir.glob("app/assets/images/Sliders/*.jpg")
end
  def location
  end

  def terms
    @record= Mcms.first
  end

  def about
  @record= Mcms.first
  end

def newsletter
  @newsletter = Newsletter.new
  render :layout => false

end


  def newsletterSave



    Newsletter.create(name: params[:newsletter][:name], mail: params[:newsletter][:mail])
    logger.debug(@newsletter.inspect.to_s)
    redirect_to action: 'index'

    end

  def brands

    @AllBrands = Dir.glob("app/assets/images/Brands/*.{jpg,png,gif,jpeg}")


  end

end

