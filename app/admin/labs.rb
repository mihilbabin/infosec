ActiveAdmin.register Lab do
  permit_params :title, :topic, :partial_name, :asset_name
  filter :topic
  filter :title
end
