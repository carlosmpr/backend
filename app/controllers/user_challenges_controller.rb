class UserChallengesController < ApplicationController
  
  
  def your_challange
    user  = User.validateUser(params[:token])
    if user
       challanges = User.find(user['id'] )
       if challanges.code_challenges.length > 0
       render json: challanges.code_challenges
       else
        render json: {msg: 'no code challanges found'}
       end
    else
      render json: {msg: 'Unauthorized'}
    end
  end

  # POST /user_challenges
  def create
    user  = User.validateUser(params[:token])
    if user
        @user_challenge = UserChallenge.new(user_id: user['id'], code_challenge_id: params[:challange_id])
        if @user_challenge.save
          render json: @user_challenge, status: :created
        else
          render json: @user_challenge.errors, status: :unprocessable_entity
        end
    else
      render json: {msg: 'Unauthorized'}
    end
  end

  

  # DELETE /user_challenges/1
  def destroy
    user  = User.validateUser(params[:token])
    if user
      begin
        user_challange = UserChallenge.find_by(user_id:user['id'], code_challenge_id: params[:challange_id])
        user_challange.destroy
        render json: {msg:"Unfollow challange"}
      rescue => exception
        render json: {msg:"Error check again"}
      end
    else
      render json: {msg: 'Unauthorized'}
    end
  end

 
end
