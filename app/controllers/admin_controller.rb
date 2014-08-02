class AdminController < ApplicationController

  before_action :authenticate_user!
  def index


  end

  def Eaboutme


         @bodyy= Mcms.find_by_id(1).body
         render layout: false


  end


  def EaboutmeSave

    row = Mcms.find_by_id(1)
    row.body = params[:post][:body]
    row.save
   redirect_to admin_path


  end

  def newsletterReport

    @reports = Newsletter.all
    render :layout => false


  end

end
