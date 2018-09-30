ActiveAdmin.register Lab do
  permit_params :title, :topic, :goal, :task, :partial_name, :asset_name
  filter :topic
  filter :title

  index do
    selectable_column
    column :id
    column :title
    column :topic
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :topic
      f.input :goal
      f.input :task
      f.input :partial_name
      f.input :asset_name
      actions
    end
  end
end
