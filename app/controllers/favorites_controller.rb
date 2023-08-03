class FavoritesController < ApplicationController
  def create
    @book = Book.find(params[:id])
    favorite = current_user.favorites.new(id: book.id)
    favorite.save
    redirect_to favorites_path(@book)
  end

  def destroy
    @book = Book.find(params[:id])
    favorite = current_user.favorites.find_by(id: book.id)
    favorite.destroy
    redirect_to favorites_path(@book)
  end
end
