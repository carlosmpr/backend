class GroupMembersController < ApplicationController
  
  def your_groups
    user  = User.validateUser(params[:token])
    if user
       group = User.find(user['id'] )
       if group.groups.length > 0
       render json: group.groups
       else
        render json: {msg: 'no code group found'}
       end
    else
      render json: {msg: 'Unauthorized'}
    end
  end

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
  def group_delete
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
