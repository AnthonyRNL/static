class AddSoundcloudfileAndYoutubefileToPosts < ActiveRecord::Migration
  def change
		add_column :posts, :soundcloudfile, :string
		add_column :posts, :youtubefile, :string
  end
end
