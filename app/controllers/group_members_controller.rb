class GroupMembersController < ApplicationController
  before_action :set_group_member, only: [ :destroy]




  # POST /group_members
  def create
    @group_member = GroupMember.new(group_member_params)
    if @group_member.save
      render json: @group_member, status: :created, location: @group_member
    else
      render json: @group_member.errors, status: :unprocessable_entity
    end
  end

  

  # DELETE /group_members/1
  def destroy
    @group_member.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_member
      @group_member = GroupMember.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_member_params
      params.require(:group_member).permit(:user_id, :group_id)
    end
end
