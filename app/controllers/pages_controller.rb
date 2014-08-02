require 'Aeditor'
class PagesController < ApplicationController

  def location
  end

  def terms
  end

  def returns
  end

  def about
#@x = Aeditor::Meditor.hello
 @body= Mcms.last.body
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


end
