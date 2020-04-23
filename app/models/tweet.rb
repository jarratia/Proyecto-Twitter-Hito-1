class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  # def to_s
  #   name
  # end

end
