class Article
  include Mongoid::Document
  include Mongoid::Slug
  field :title, type: String
  field :content, type: String
  slug :title, type: String
  belongs_to :category
end
