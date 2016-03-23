ActiveAdmin.register Order do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

	permit_params :id, :name, :address, :email, :pay_type, :created_at
	
	index do
	  column :id
	  column :name
	  column :address
	  column :email
	  column :pay_type
	  column :created_at
	  actions
 	end
end
