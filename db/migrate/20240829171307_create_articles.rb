class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :sub_title
      t.text :main_article
      t.string :tags

      t.timestamps
    end
  end
end
