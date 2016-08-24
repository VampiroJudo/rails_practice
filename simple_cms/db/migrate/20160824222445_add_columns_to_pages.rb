class AddColumnsToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :name, :string
    add_column :pages, :permalink, :string
    add_column :pages, :position, :integer
    add_column :pages, :visible, :boolean
  end
end
