require 'Aeditor'
class PagesController < ApplicationController

def index
  @AllSliders = Dir.entries("app/assets/images/Sliders/")
  @AllSliders.shift(2)

end
  def location
  end

  def terms
    @record= Mcms.first
  end

  def about
#@x = Aeditor::Meditor.hello
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

    @AllBrands = Dir.entries("app/assets/images/Brands/")
    @AllBrands.shift(2)


  end

end

