class Post < ApplicationRecord
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates_attachment_file_name :image, matches: [/png\z/, /jpeg\z/]


	validates :title, presence: true  
	validates :body, presence: true
	#belongs_to :user
	has_many :comments, dependent: :destroy


	# for friendly urls
	extend FriendlyId
	friendly_id :title, :use => [:slugged, :history]

	# def should_generate_new_friendly_id?
	# 	new_record?
	# end



end

#Post.friendly_id.find(params[:id])
