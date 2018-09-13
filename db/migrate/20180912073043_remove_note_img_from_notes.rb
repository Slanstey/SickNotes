class RemoveNoteImgFromNotes < ActiveRecord::Migration[5.2]
  def change
    remove_column :notes, :note_img, :string
  end
end
