class User < ApplicationRecord
    has_many :articles,
    class_name: "Article"

    
end
