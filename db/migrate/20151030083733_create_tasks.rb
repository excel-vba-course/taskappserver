class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.attachment :file
      t.string :tags
      t.text :description

      t.timestamps null: false
    end
  end
end
