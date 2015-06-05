class CapabilitiesController < ApplicationController
  def index
    @capabilities = Capability.all
  end

  def show
    @capability = Capability.find(params[:id])
  end

  def new
    @capability = Capability.new
  end

  def create
    @capability = Capability.new
    @capability.vendor_id = params[:vendor_id]
    @capability.service_id = params[:service_id]

    if @capability.save
      redirect_to "/capabilities", :notice => "Capability created successfully."
    else
      render 'new'
    end
  end

  def edit
    @capability = Capability.find(params[:id])
  end

  def update
    @capability = Capability.find(params[:id])

    @capability.vendor_id = params[:vendor_id]
    @capability.service_id = params[:service_id]

    if @capability.save
      redirect_to "/capabilities", :notice => "Capability updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @capability = Capability.find(params[:id])

    @capability.destroy

    redirect_to "/capabilities", :notice => "Capability deleted."
  end
end
