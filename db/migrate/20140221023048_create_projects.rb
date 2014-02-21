class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :website_url
      t.string :github_url

      t.timestamps
    end
  end
end
