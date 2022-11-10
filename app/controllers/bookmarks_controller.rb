class BookmarksController < ApplicationController
  def destroy
    @bookmarks = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_path, status: :see_other
  end
end
