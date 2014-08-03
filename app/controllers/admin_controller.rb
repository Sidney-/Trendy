class AdminController < ApplicationController

  before_action :authenticate_user!
  def index


  end

  def Eaboutme

          if(Mcms.first.nil?)
            Mcms.new.save
          end
         @bodyy= Mcms.first.body
         render layout: false


  end


  def EaboutmeSave

    row = Mcms.first
    if(row.body.nil?)
      row.body = "EMPTY!!"
      row.save
    end
    row.body = params[:post][:body]
    row.save
   redirect_to admin_path


  end

  def newsletterReport

    @reports = Newsletter.all
    render :layout => false


  end

  def Cbimage


    @mcms = Mcms.find_by_id(5)
  end

  def CbimageSave


    @mcms = Mcms.first
    if(@mcms[:pic1].nil?)
      @mcms[:pic1] ="app/assets/images/pic1"
      @mcms.save
    end
    FileUtils.rm_rf(Dir.glob("#{@mcms[:pic1].to_s}*" ))
    Rails.logger.debug  "J"
    @topBanner = params[:mcms][:pic1]
    uploader = AddpicassetUploader.new(name:"topBanner")
    uploader.store!(@topBanner)
    redirect_to admin_path



  end


  end