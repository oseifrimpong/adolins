ActiveAdmin.register Post do
	#adding a button for images
	permit_params :title, :body, :image, :slugged, :history

		show do |t|
			attributes_table do
				row :title
				row :body
				row :image do
					post.image? ? image_tag(post.image.url, height: '800') : content_tag(:span, "No photo yet")
					#image_tag(post.image.url(:image))
				end
			end
		end

		form :html => { :enctype => "multipart/form-data" } do |f|
			f.inputs do
				f.input :title
				f.input :body
				f.input :image, hint: f.post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF")
			end
			f.actions
		end




end
