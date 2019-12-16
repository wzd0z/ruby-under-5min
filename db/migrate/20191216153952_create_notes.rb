class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
