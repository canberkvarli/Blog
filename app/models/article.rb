# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Article < ApplicationRecord
    include Visible
    
    validates :title, presence: :true
    validates :body, presence:  :true, length: {minimum: 10}

    
    has_many :comments, 
    class_name: "Comment",
    dependent: :destroy

    belong_to :user,
    class_name: "User",
    dependent: :destroy
end
