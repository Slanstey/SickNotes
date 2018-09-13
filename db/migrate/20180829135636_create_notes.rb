class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      	t.string :employee
      	t.string :note_img
      	t.string :doctor
      	t.boolean :is_fraudulent
      	t.references :client
      	t.timestamps
    end
  end
end 
