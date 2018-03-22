class Post < ApplicationRecord
    has_many :comments #한 포스트에 다수에 코멘트(댓글)이 들어간다는 뜻
    has_and_belongs_to_many :hashtags
    accepts_nested_attributes_for :hashtags  #hashtag를 nested된 속성으로 받아들임
end
