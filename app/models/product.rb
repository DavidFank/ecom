class Product < ApplicationRecord

	belongs_to :category
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
