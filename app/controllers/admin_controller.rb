class AdminController < ApplicationController

  before_action :authenticate_user!
  def index


  end

  def Eaboutme


         @bodyy= Mcms.first.body
         #render layout: false



  end

  def EdirTermsOfService
    @mcms = Mcms.first
    if(Mcms.first.present?)
      if(request.patch?)

        @mcms.canccelation= params[:mcms][:canccelation] if params[:mcms][:canccelation].present?
        @mcms.complaints = params[:mcms][:complaints] if params[:mcms][:complaints].present?
        @mcms.payment = params[:mcms][:payment] if params[:mcms][:payment].present?
        @mcms.returnE= params[:mcms][:returnE] if params[:mcms][:returnE].present?
        @mcms.shippingp = params[:mcms][:shippingp] if params[:mcms][:shippingp].present?
        @mcms.saboutus = params[:mcms][:saboutus] if params[:mcms][:saboutus].present?



        @mcms.save!
        redirect_to admin_path



      end
    end
    end

  def EditContact
    @mcms = Mcms.first
    if(Mcms.first.present?)
    if(request.patch?)

      @mcms.imail= params[:mcms][:email] if params[:mcms][:email].present?
      @mcms.iaddress = params[:mcms][:address] if params[:mcms][:address].present?
      @mcms.iphone = params[:mcms][:phone] if params[:mcms][:phone].present?



      @mcms.save!
      redirect_to admin_path

    end

    end

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
      respond_to do |format|
      format.html # don't forget if you pass html
      format.xls { send_data(@reports.to_xls) }
        end


  end


  def Cbimage

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

if (request.patch?)


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
    if(params[:mbrands])
      FileUtils.rm_rf(Dir.glob("#{@mcms[:pic3].to_s}*" ))
      sliders = params[:mbrands][:pic3]
      i=0
      while i < sliders.size  do
        uploader = AddpicassetUploader.new(name:"slider#{i}"+Time.now.to_s.gsub(/[\W]/,''),path:"#{@mcms[:pic3].to_s}")
        uploader.store!(sliders.at(i))
        i=i+1
      end

    end


    redirect_to admin_path

    end
  end


end