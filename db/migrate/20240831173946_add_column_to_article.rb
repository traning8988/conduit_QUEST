class AddColumnToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :comment, :string
  end
end
