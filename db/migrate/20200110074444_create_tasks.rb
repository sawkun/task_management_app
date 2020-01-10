class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :detail
      t.datetime :created_at
      t.datetime :updated_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
