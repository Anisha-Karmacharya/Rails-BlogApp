class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :author
      t.text :content
      t.date :posted_on

      t.timestamps
    end
  end
end
