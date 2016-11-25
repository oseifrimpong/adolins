class Post < ApplicationRecord
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


	validates :title, presence: true, length: { minimum: 20 }
	validates :body, presence: true
	#belongs_to :user
	has_many :comments, dependent: :destroy



end
