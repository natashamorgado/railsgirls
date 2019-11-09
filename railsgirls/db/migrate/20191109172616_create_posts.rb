class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.string :author
      t.datetime :created_date
      t.datetime :published_date

      t.timestamps
    end
  end
end
