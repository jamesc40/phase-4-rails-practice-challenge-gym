class GymsController < ApplicationController
    
  def index
    gyms = Gym.all
    render json: gyms, status: :found
  end

  def show
    gym = find_gym
    render json: gym, status: :found
  end

  def update
    gym = find_gym
    gym.update!(gym_params)
    render json: gym, status: :accepted
  end

  def destroy
    gym = find_gym
    gym.destroy
    head :no_content
  end

  private

  def find_gym
    Gym.find(params[:id])
  end

  def gym_params
    params.permit(:name, :address)
  end

end
