class UserLists < ActiveRecord::Migration
  def change
	  	create_table :user_lists do |t|
	    t.string   "firstname"
	    t.string   "middlename"
	    t.string   "lastname"
	    t.string   "company"
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	    t.string   "email_id"
	  end
  end
end
