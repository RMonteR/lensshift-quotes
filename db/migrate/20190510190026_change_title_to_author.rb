class ChangeTitleToAuthor < ActiveRecord::Migration[5.2]
  def change
    rename_column :quotes, :title, :author
  end
end
