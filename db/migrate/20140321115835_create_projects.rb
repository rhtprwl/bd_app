class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :PROJECT
      t.string :URL
      t.string :DOMAIN
      t.string :TECHNOLOGY
      t.string :TAGS
      t.datetime :START_DATE
      t.datetime :END_DATE
      t.string :PROJECT_LEAD
      t.string :PROJECT_TYPE
      t.string :DESCRIPTION

      t.timestamps
    end
  end
end
