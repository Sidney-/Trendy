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

respond_to do |format|
  format.html
  format.csv { render text: @newsleters.to_csv}
  end
    @reports = Newsletter.all
    render :layout => false


  end

  def Cbimage


    @mcms= Mcms.first
  end

  def CbimageSave

   # Rails.logger.debug  "debugging -->"+params[:mcms][:pic2].inspect.to_s
    @mcms = Mcms.first


# Set location path in the database :
    if(@mcms[:pic1].nil?)
      @mcms[:pic1] ="app/assets/images/pic1/"
      @mcms.save
    end
    if(@mcms[:pic2].nil?)
      @mcms[:pic2] ="app/assets/images/sliders/"
      @mcms.save
    end
    if(@mcms[:pic3].nil?)
      @mcms[:pic3] ="app/assets/images/Brands/"
      @mcms.save
    end




    #It uploads the banner pictures
   if(params[:mcms])
     FileUtils.rm_rf(Dir.glob("#{@mcms[:pic1].to_s}*" ))
        @topBanner = params[:mcms][:pic1]
       uploader = AddpicassetUploader.new(name:"topBanner" ,path:"#{@mcms[:pic1].to_s}")
       uploader.store!(@topBanner)
    end

    if(params[:post_attachments])
      FileUtils.rm_rf(Dir.glob("#{@mcms[:pic2].to_s}*" ))
      sliders = params[:post_attachments][:pic2]
      i=0
      while i < sliders.size  do
        uploader = AddpicassetUploader.new(name:"slider#{i}"+Time.now.to_s.gsub(/[\W]/,''),path:"#{@mcms[:pic2].to_s}")
        uploader.store!(sliders.at(i))
        i=i+1
      end


    end
    if(params[:brands])
    FileUtils.rm_rf(Dir.glob("#{@mcms[:pic3].to_s}*" ))
      brands = params[:brands][:pic3]
      i=0
      while i < brands.size  do
        uploader = AddpicassetUploader.new(name:"brand#{i}"+Time.now.to_s.gsub(/[\W]/,''),path:"#{@mcms[:pic3].to_s}")
        uploader.store!(brands.at(i))
        i=i+1
      end


    end



    redirect_to admin_path



  end


  end