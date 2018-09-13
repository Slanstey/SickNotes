class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
		t.string :company
		t.string :subscription_type
		t.string :logo_img
		t.string :email
		t.string :password_digest		
	    t.timestamps
    end
  end
end
