class AddVisibleToSubject < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :visible, :boolean
  end
end
