class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :username
	  	t.string :email
	  	t.string :age
	  	t.text :description
	  	t.string :location
	  	t.string :number
	  	t.text :address
	  	t.string :password_digest
	  	t.attachment :image
	  	t.timestamps
    end
  end
end
