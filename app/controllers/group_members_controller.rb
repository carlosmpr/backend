class GroupMembersController < ApplicationController
  
  # POST /group_members
  def create
    user  = User.validateUser(params[:token])
    if user
      @group_member = GroupMember.new(user_id: user['id'], group_id:params[:group_id])

      if @group_member.save
        render json: @group_member, status: :created
      else
        render json: @group_member.errors, status: :unprocessable_entity
      end
    else
      render json: {msg: 'Unauthorized'}
    end

   
  end

  # DELETE /group_members/1
  def destroy
    user  = User.validateUser(params[:token])
    if user
      begin
        user_member = GroupMember.find_by(user_id: user['id'], group_id:params[:group_id])
        user_member.destroy
        render json: {msg:"Your not Member of the group anymore"}
      rescue => exception
        render json: {msg:"Error check again"}
      end
    else
      render json: {msg: 'Unauthorized'}
    end
  end


  
end
