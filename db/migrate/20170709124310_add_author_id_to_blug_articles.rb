class AddAuthorIdToBlugArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :blug_articles, :author_id, :integer
  end
end
