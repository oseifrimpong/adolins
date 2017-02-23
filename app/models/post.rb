class Post < ApplicationRecord
	has_attached_file :image, :storage => :cloudinary, :path => ':id/:style/:filename', styles: { large: "1000x1000>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  #validates_attachment_file_name :image, matches: [/png\z/, /jpeg\z/]

  #do_not_validate_attachment_file_type :image


	validates :title, presence: true  
	validates :body, presence: true
	#belongs_to :user
	has_many :comments, dependent: :destroy


	# for friendly urls
	extend FriendlyId
	friendly_id :title, :use => [:slugged, :finders, :history]

	# def should_generate_new_friendly_id?
	# 	new_record?
	# end

# def self.search(term, page)
#   if term
#     where('name LIKE ?', "%#{term}%").paginate(page: page, per_page: 6).order('id DESC')
#   else
#     paginate(page: page, per_page: 6).order('id DESC') 
#   end
# end



end

#Post.friendly_id.find(params[:id])
