class TeamController < ApplicationController
  def list
    @teams = Team.all
    render json:@teams, status: :ok
  end

  def add
    @team = Team.create(name: params[:name], is_active: true)
    render json: @team, status: :created
  end

  def details
    @team = Team.find(params[:id])
    render json: @team, status: :ok
  end

  def update
    @team = Team.find(params[:id])
    @team.update(name: params[:name])
    render json: @team, status: :ok
  end

  def delete
    @team = Team.find(params[:id])
    @team.is_active = false
    @team.save
    render json: @team, status: :ok
  end

  def members  # TODO: update this to include users data
    @members = Membership.where(team: params[:id])
    render json: @members, status: :ok
  end

  def add_member
    @team = Team.find(params[:id])
    @user = User.find(params[:user_id])
    @membership = Membership.create(team: @team, user: @user, is_manager: params[:is_manager], is_active: true)
    render json: @membership, status: :created
  end

  def remove_member
    @team = Team.find(params[:id])
    @user = User.find(params[:user_id])
    @membership = Membership.find_by(team: @team, user: @user)
    @membership.is_active = false
    @membership.save
    render json: @membership, status: :ok
  end
end
