class Tweet < ApplicationRecord
  validates :content, presence: true

  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :tweets

  # def to_s
  #   name
  # end

end
