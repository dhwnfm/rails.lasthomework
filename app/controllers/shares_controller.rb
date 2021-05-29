class SharesController < ApplicationController
  def index
   @shares = Share.all
  end

  def new 
   @shares = Share.new
  end

  def create
   @share = Share.new(params.require(:share).permit(:room_name, :room_introduction, :room_price, :room_image))
   if @share.save
     flash[:notice] = "登録しました。！"
     redirect_to :shares
   else 
     render "new"
   end   
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
