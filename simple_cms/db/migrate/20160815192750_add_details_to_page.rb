class AddDetailsToPage < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :subject_id, :integer
  end
end
