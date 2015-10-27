class Post < ActiveRecord::Base
  has_many :post_tags
  has_many :tags, through: :post_tags

  def tag_names
    self.tags.map { |x| x[:name] }.join(", ")
  end

  def tag_names=(new_tags)
    tags = new_tags.split(",").map { |tag| Tag.find_or_create_by(name: tag) }
    self.tags = tags
  end
end
