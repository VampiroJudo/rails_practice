class AddDetailsToSection < ActiveRecord::Migration[5.0]
  def change
    add_column :sections, :page_id, :integer
    add_column :sections, :name, :string
    add_column :sections, :position, :integer
    add_column :sections, :visible, :boolean
    add_column :sections, :content_type, :string
    add_column :sections, :content, :text
  end
end
