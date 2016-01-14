class AddAttachmentPubmatToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :pubmat
    end
  end

  def self.down
    remove_attachment :events, :pubmat
  end
end
