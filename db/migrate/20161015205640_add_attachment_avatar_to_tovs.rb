class AddAttachmentAvatarToTovs < ActiveRecord::Migration
  def self.up
    change_table :tovs do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :tovs, :avatar
  end
end
