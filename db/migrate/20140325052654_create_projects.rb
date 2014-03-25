class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :projects
      t.string :url
      t.string :domain
      t.string :technology
      t.string :tags
      t.datetime :start_date
      t.datetime :end_date
      t.string :project_lead
      t.string :project_type
      t.string :description

      t.timestamps
    end
  end
end
