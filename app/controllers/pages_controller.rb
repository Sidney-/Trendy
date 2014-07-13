class PagesController < ApplicationController
  def location
  end

  def terms
  end

  def returns
  end

  def about
  end

def newsletter
  @newsletter = Newsletter.new

end

  def newsletterSave



    Newsletter.create(name: params[:newsletter][:name], mail: params[:newsletter][:mail])
    logger.debug(@newsletter.inspect.to_s)
    redirect_to action: 'contact'

    end


def newsletterReport

  @reports = Newsletter.all


end

end
