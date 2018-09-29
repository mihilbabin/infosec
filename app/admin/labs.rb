ActiveAdmin.register Lab do
  permit_params :title, :topic, :goal, :task, :partial_name, :asset_name
  filter :topic
  filter :title

  form do |f|
    f.input :title
    f.input :topic
    f.input :goal
    f.input :task
    f.input :partial_name
    f.input :asset_name
  end
end
