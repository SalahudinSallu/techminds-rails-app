ActiveAdmin.register Team do
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
                members_attributes: %i[id name role location image _destroy]

  show do
    attributes_table do
      row :description
    end
    panel 'Members' do
      table_for team.members do
        column :name
        column :role
        column :location
        column :image do |member|
          image_tag url_for(member.image)
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :description
      f.inputs do
        f.has_many :members, heading: 'Members',
                             allow_destroy: true,
                             remove_record: 'Remove Member',
                             new_record: 'New Member' do |a|
          a.input :name
          a.input :role
          a.input :location
          a.input :image, as: :file
        end
      end
    end
    f.actions
  end
end
