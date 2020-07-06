class UserController < ApplicationController
  def list
    @users = User.all
    render json:@users, status: :ok
  end

  def add
    @user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], is_active: true)
    render json: @user, status: :created
  end

  def details
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

  def update
    @user = User.find(params[:id])
    @user.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    render json: @user, status: :ok
  end

  def delete
    @user = User.find(params[:id])
    @user.is_active = false
    @user.save
    render json: @user, status: :ok
  end

  def teams
    @user = User.find(params[:id])
    render json: @user.teams, status: :ok
  end
end
