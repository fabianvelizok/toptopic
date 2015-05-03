class Admin::UsersController < InheritedResources::Base
  before_action :authenticate_admin!
  actions :index
  layout 'admin'
end
