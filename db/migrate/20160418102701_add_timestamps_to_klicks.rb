class AddTimestampsToKlicks < ActiveRecord::Migration
  def change
  	add_column(:klicks, :created_at, :datetime)
    add_column(:klicks, :updated_at, :datetime)
  end
end
