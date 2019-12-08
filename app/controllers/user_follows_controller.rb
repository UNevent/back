class UserFollowsController < ApplicationController
  before_action :set_user_followed, only: [:show, :update, :destroy]

  # GET /user_follows
  def index
    @user_follows = UserFollow.all

    render json: @user_follows
  end

  # GET /user_follows/1
  def show
    render json: @user_follow
  end

  # POST /user_follows
  def create
    @user_follow = UserFollow.new(user_follow_params)

    if @user_follow.save
      render json: @user_follow, status: :created, location: @user_follow
    else
      render json: @user_follow.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_follows/1
  def update
    @user = User.find_by_id(params[:id])
    deleted_ass_ids = (
      @user.associations.collect(&:id) -
      params[:user][:follower_association_ids].reject(&:blank?).map(&:to_i)
    )
    if @user.update(update_params)
      deleted_ass_ids.each do  |ass_id|
        ids = [@user.id, ass_id]
        TemplateAssociation.where(
          :follower_template_id => ids,
          :user_followed_template_id => ids
        ).destroy_all
    else
      render 'edit'
    end
  end

  # DELETE /user_follows/1
  def destroy
    @user_follow.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_follow
      @user_follow = UserFollow.find(params[:id])
    end

    def update_params
      params.require(:user).permit(:follower_association_ids => [])
    end

    # Only allow a trusted parameter "white list" through.
    def user_follow_params
      params.require(:user_follow).permit(:follower_id, :user_followed_id)
    end
end
