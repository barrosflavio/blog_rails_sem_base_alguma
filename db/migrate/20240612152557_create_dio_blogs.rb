class CreateDioBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dio_blogs do |t|
      t.string :title
      t.string :author
      t.string :note
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
