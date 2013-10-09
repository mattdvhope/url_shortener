class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :url_location
      t.string :short_url

      t.timestamps
    end
  end
end
