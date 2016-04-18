class AddTimestampsToRunways < ActiveRecord::Migration
  def change
  	add_column(:runways, :created_at, :datetime)
    add_column(:runways, :updated_at, :datetime)
  end
end
