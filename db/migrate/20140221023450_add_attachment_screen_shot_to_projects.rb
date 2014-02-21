class AddAttachmentScreenShotToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :screen_shot
    end
  end

  def self.down
    drop_attached_file :projects, :screen_shot
  end
end
