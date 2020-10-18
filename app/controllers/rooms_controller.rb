class RoomsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @room = Room.new
    @rooms = Room.all.order(id: "DESC")
  end
  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to root_path
  end

  private
  def room_params
    params.require(:room).permit(:name,:content,:official).merge(user_id: current_user.id)
  end
end
