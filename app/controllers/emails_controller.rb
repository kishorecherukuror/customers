class EmailsController < ApplicationController

  # GET /emails
  # GET /emails.json
  def index
    @emails = Email.all
  end

  # GET /emails/1
  # GET /emails/1.json
  def show
  end

  # GET /emails/new
  def new
    @vendor = Vendor.find(params[:id])
    @email = @vendor.email
  end

  def vendor
    @vendor = Vendor.find(params[:id])
    @email = @vendor.build_email
  end

  def vendor_create
    @vendor = Vendor.find(params[:id])
    puts "%%%%%%%%%%%%%%%%%%%%%%5"
    puts @vendor.inspect
    @vendor_email = @vendor.build_email(email_params)
    if @vendor_email.save
      redirect_to root_url
    end
  end

  # GET /emails/1/edit
  def edit
    @vendor = Vendor.find(params[:id])
    puts "*******************"
    puts @vendor.inspect
    @email = @vendor.build_email
  end

  # POST /emails
  # POST /emails.json

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email
      @email = Email.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_params
      params.require(:email).permit(:email_id)
    end
end
