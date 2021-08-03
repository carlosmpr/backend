class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :update, :destroy]
  def index
    groups = Group.all
    render json: groups
  end

  def all_members
    user  = User.validateUser(params[:token])
    if user
      membership = GroupMember.find_by(user_id:user['id'], group_id:params[:group_id])

      if membership
        all_members = Group.find(params[:group_id])
        render json: all_members.users
        else
          render json: {msg: 'Error check group or membership'}
        end
      
    else
      render json: {msg: 'Unauthorized'}
      end
  end
 


  # # POST /groups
  # def create
  #   @group = Group.new(group_params)

  #   if @group.save
  #     render json: @group, status: :created, location: @group
  #   else
  #     render json: @group.errors, status: :unprocessable_entity
  #   end
  # end


  # # DELETE /groups/1
  # def destroy
  #   @group.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_params
      params.require(:group).permit(:name, :programing_language_id)
    end
end
