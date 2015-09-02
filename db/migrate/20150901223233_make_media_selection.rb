class MakeMediaSelection < ActiveRecord::Migration
  def change
		add_column :posts, :media_selection, :string
  end
end
