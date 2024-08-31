class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :title
      t.text :main_article

      t.timestamps
    end
  end
end
