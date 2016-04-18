class AddAttachmentImage2Image3ToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :image2
      t.attachment :image3
    end
  end

  def self.down
    remove_attachment :pins, :image2
    remove_attachment :pins, :image3
  end
end
