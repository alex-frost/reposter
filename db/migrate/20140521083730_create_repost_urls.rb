class CreateRepostUrls < ActiveRecord::Migration
  def change
    create_table :repost_urls do |t|
      t.string :url

      t.timestamps
    end
  end
end
