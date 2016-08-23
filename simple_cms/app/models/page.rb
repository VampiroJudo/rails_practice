class Page < ApplicationRecord
	belongs_to :subject
	has_many :sections
	has_and_belongs_to_many :editors, :class_name => 'AdminUser'

	scope :visible, lamba { where(:visible => true) }
	scope :invisible, lamba { where(:visible => false) }
	scope :sorted, lamba { order("pages.position ASC") }
	scope :newest_first, lamba { order('pages.created_at DESC') }
	
end
