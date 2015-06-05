class VendorSizesController < ApplicationController
  def index
    @vendor_sizes = VendorSize.all
  end

  def show
    @vendor_size = VendorSize.find(params[:id])
  end

  def new
    @vendor_size = VendorSize.new
  end

  def create
    @vendor_size = VendorSize.new
    @vendor_size.vendor_size = params[:vendor_size]

    if @vendor_size.save
      redirect_to "/vendor_sizes", :notice => "Vendor size created successfully."
    else
      render 'new'
    end
  end

  def edit
    @vendor_size = VendorSize.find(params[:id])
  end

  def update
    @vendor_size = VendorSize.find(params[:id])

    @vendor_size.vendor_size = params[:vendor_size]

    if @vendor_size.save
      redirect_to "/vendor_sizes", :notice => "Vendor size updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @vendor_size = VendorSize.find(params[:id])

    @vendor_size.destroy

    redirect_to "/vendor_sizes", :notice => "Vendor size deleted."
  end
end
