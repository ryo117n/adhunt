class RenameCommentColumnToContent < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :comment, :content
  end
end
