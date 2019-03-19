class Article < ApplicationRecord
    has_many :taggings
    has_many :tags, through: :taggings

    validates :title, presence: true,
                      length: { minimum: 5 }
    validates :picture, presence: true

    def self.tagged_with(body)
        Tag.find_by!(body: body).articles
    end

    def tag_list
        tags.map(&:body).join(', ')
    end
    
      def tag_list=(names)
        self.tags = names.split(',').map do |n|
          Tag.where(body: n.strip).first_or_create!
        end
    end
end
