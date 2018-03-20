# ## Schema Information
#
# Table name: `organization_lists`
#
# ### Columns
#
# Name                   | Type               | Attributes
# ---------------------- | ------------------ | ---------------------------
# **`andrew_id`**        | `string`           |
# **`created_at`**       | `datetime`         | `not null`
# **`id`**               | `integer`          | `not null, primary key`
# **`organization_id`**  | `integer`          |
# **`updated_at`**       | `datetime`         | `not null`
#

class OrganizationListsController < ApplicationController
  
  # Worry about authorization later
  
  # load_and_authorize_resource skip_load_resource only: [:create] 

  # have an index page showing the pending memberships
  
  def index
    @members = OrganizationList.all
  end

  # no need for show page

  # new organizion list
  def new
    # @document = OrganizationList.new
  end

  # no need for edit page


  def import
    OrganizationList.import(params[:org_name], params[:file])
    redirect_to organization_lists_path, notice: "Successfully added members to your organization!"
  end


# no need for update


# no need for destroy


  private

  # need to add security to the params 
  
  # def organization_list_params
  #   params.require(:organization_list).permit(:organization_name, :file)
  # end

  
end
