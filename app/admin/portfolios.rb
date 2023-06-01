ActiveAdmin.register Portfolio do
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
                portfolio_items_attributes: %i[id title description image hide_demo_link _destroy]

  show do
    attributes_table do
      row :description
    end
    panel 'Projects' do
      table_for portfolio.portfolio_items do
        column :title
        column :description
        column :image do |portfolio_item|
          image_tag url_for(portfolio_item.image)
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :description
      f.inputs do
        f.has_many :portfolio_items, heading: 'Projects',
                                     allow_destroy: true,
                                     remove_record: 'Remove Project',
                                     new_record: 'New Project' do |a|
          a.input :title
          a.input :description
          a.input :image, as: :file
          a.input :hide_demo_link, as: :boolean
        end
      end
    end
    f.actions
  end
end