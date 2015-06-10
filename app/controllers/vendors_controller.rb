class VendorsController < ApplicationController

  before_action :ensure_current_user_is_owner, :only => [:destroy]

  def ensure_current_user_is_owner
    @vendor = Vendor.find(params[:id])
    if @vendor.user_id != current_user.id
     redirect_to root_url, :alert => "Only original user can delete entry"
    end
  end

  def index
    @q = Vendor.ransack(params[:q])
    @vendors = @q.result(:distinct => true).includes(:capabilities)
  end

  def show
    @vendor = Vendor.find(params[:id])
    @review = Review.new
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new
    @vendor.contact_name = params[:contact_name]
    @vendor.contact_number = params[:contact_number]
    @vendor.rating = params[:rating]
    @vendor.vendor_size_id = params[:vendor_size_id]
    @vendor.name = params[:name]
    @vendor.location_id = params[:location_id]
    @vendor.contact_email = params[:contact_email]
    @vendor.summary = params[:summary]
    @vendor.website = params[:website]
    @vendor.user_id = current_user.id

    if @vendor.save

      params[:service_ids].each do |service_id|
        @capability = Capability.new
        @capability.vendor_id = @vendor.id
        @capability.service_id = service_id
        @capability.save
      end

      redirect_to "/vendors", :notice => "Vendor created successfully."
    else
      render 'new'
    end
  end

  def edit
    @vendor = Vendor.find(params[:id])
  end

  def update
    @vendor = Vendor.find(params[:id])

    @vendor.contact_name = params[:contact_name]
    @vendor.contact_number = params[:contact_number]
    @vendor.rating = params[:rating]
    @vendor.vendor_size_id = params[:vendor_size_id]
    @vendor.name = params[:name]
    @vendor.location_id = params[:location_id]
    @vendor.contact_email = params[:contact_email]
    @vendor.summary = params[:summary]
    @vendor.website = params[:website]
    @vendor.user_id = params[:user_id]

    if @vendor.save
      redirect_to "/vendors", :notice => "Vendor updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @vendor = Vendor.find(params[:id])

    @vendor.destroy

    redirect_to "/vendors", :notice => "Vendor deleted."
  end
end
