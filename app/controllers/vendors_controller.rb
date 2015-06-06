class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
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

    @capability = Capability.new
    @capability.vendor_id = @vendor.id
    @capability.service_id = params[:service]

    if @vendor.save
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
