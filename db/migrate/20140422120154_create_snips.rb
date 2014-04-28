class CreateSnips < ActiveRecord::Migration
  def change
    create_table :snips do |t|
      t.string "title"
      t.text "snippet"
      t.string "category", :default => "notes"
      t.timestamps
    end
  end
end
