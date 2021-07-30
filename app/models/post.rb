class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250} 
    validates :summary, length: {maximum: 250} 
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    # validate :fiction_or_nonfiction

    # def fiction_or_nonfiction
    #     unless category.match?("Fiction" || "Non-Fiction")
    #         errors.add(:category, "is not included in the list")
    #     end
    # end
end
