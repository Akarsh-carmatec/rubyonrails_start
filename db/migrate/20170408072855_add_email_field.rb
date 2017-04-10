class AddEmailField < ActiveRecord::Migration
  def change
  	add_column :userlists, :email_id, :string
  end
end
