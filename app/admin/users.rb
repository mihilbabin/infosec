ActiveAdmin.register User do
  permit_params :name, :email, :attempts, :password, :password_confirmation

  scope I18n.t('activerecord.scopes.user.all'), :all
  scope I18n.t('activerecord.scopes.user.locked'), :locked

  filter :name
  filter :email

  index do
    selectable_column
    column :id
    column :name
    column :email
    column :locked?
    actions
  end

  form do |f|
    f.inputs do
      f.semantic_errors *f.object.errors.keys
      f.input :name
      f.input :email
      f.input :attempts
      if f.object.new_record?
        f.input :password
        f.input :password_confirmation
      end
      f.actions
    end
  end
end