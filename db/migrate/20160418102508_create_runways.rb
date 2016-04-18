class CreateRunways < ActiveRecord::Migration
  def change
    create_table :runways do |t|
      t.string :name
      t.attachment :image
    end
  end
end
