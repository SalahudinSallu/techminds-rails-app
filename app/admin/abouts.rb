ActiveAdmin.register About do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :description,
                :project_completed_count,
                :happy_clients_count,
                :icon_one,
                :title_one,
                :description_one,
                :icon_two,
                :title_two,
                :description_two,
                :icon_three,
                :title_three,
                :description_three,
                :icon_four,
                :title_four,
                :description_four

  show do
    attributes_table do
      row :description

      row :project_completed_count
      row :happy_clients_count

      panel 'Box 1 Details' do
        columns do
          column max_width: '200px' do
            image_tag url_for(about.icon_one)
          end
          column do
            h3 about.title_one
            div about.description_one
          end
        end
      end

      panel 'Box 2 Details' do
        columns do
          column max_width: '200px' do
            image_tag url_for(about.icon_two)
          end
          column do
            h3 about.title_two
            div about.description_two
          end
        end
      end

      panel 'Box 3 Details' do
        columns do
          column max_width: '200px' do
            image_tag url_for(about.icon_three)
          end
          column do
            h3 about.title_three
            div about.description_three
          end
        end
      end

      panel 'Box 4 Details' do
        columns do
          column max_width: '200px' do
            image_tag url_for(about.icon_four)
          end
          column do
            h3 about.title_four
            div about.description_four
          end
        end
      end

      row :diamond_icon do
        image_tag url_for(about.diamond_icon)
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :description

      f.input :project_completed_count
      f.input :happy_clients_count

      f.input :icon_one, as: :file
      f.input :title_one
      f.input :description_one

      f.input :icon_two, as: :file
      f.input :title_two
      f.input :description_two

      f.input :icon_three, as: :file
      f.input :title_three
      f.input :description_three

      f.input :icon_four, as: :file
      f.input :title_four
      f.input :description_four

      f.input :diamond_icon, as: :file
    end
    f.actions
  end
end
