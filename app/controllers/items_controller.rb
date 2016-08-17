class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = "Item was saved successfully."
      redirect_to :back
    else
      flash[:alert] = "There was an error saving the item. Please try again."
    end
  end

  def destroy
    @user = current_user
    @item = @user.items.find(params[:id])

    if @item.destroy
      flash[:notice] = "Item was deleted successfully"
    else
      flash[:alert] = "Item couldn't be deleted. Try again."
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
