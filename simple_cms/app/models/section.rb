class Section < ApplicationRecord
	belongs_to :page
	has_many :section_edits
	has_many :editors, :through => :section_edits, :class_name
	=> "AdminUser"

	scope :visible, lamba { where(:visible => true) }
	scope :invisible, lamba { where(:visible => false) }
	scope :sorted, lamba { order("sections.position ASC") }
	scope :newest_first, lamba { order('sections.created_at DESC') }
	
end
