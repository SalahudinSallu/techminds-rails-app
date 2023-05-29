ActiveAdmin.register Service do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :description,
                service_items_attributes: %i[id title description icon _destroy]

  show do
    attributes_table do
      row :description
    end
    panel 'Services' do
      table_for service.service_items do
        column :title
        column :description
        column :icon do |service_item|
          image_tag url_for(service_item.icon)
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :description
      f.inputs do
        f.has_many :service_items, heading: 'Services',
                                   allow_destroy: true,
                                   remove_record: 'Remove Service',
                                   new_record: 'New Service' do |a|
          a.input :title
          a.input :description
          a.input :icon, as: :file
        end
      end
    end
    f.actions
  end
end
