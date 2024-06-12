json.extract! dio_blog, :id, :title, :author, :note, :description, :text, :created_at, :updated_at
json.url dio_blog_url(dio_blog, format: :json)
