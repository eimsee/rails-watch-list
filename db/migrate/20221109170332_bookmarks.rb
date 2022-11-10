class Bookmarks < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookmarks, :movie, index: true
    add_foreign_key :bookmarks, :movies
    add_reference :bookmarks, :list, index: true
    add_foreign_key :bookmarks, :lists

  end
end
