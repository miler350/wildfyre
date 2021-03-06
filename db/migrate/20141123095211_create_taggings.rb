class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.belongs_to :tag, null: false
      t.integer :taggable_id, null: false
      t.string :taggable_type, null: false
      t.timestamps
    end
    add_index :taggings, :tag_id
    add_index :taggings, :taggable_id
    add_index :taggings, :taggable_type
  end
end
