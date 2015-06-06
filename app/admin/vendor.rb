ActiveAdmin.register Vendor do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :contact_name, :contact_number, :rating, :vendor_size_id, :name, :location_id, :contact_email, :summary, :website, :user_id, :created_at, :updated_at
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
