class Book < ApplicationRecord
    validates :title, presence:true
    validates :author, presence:true
    validates :published, presence:true
    validates :genre, presence:true
    validates :stock, presence:true
end
