class CreateSnips < ActiveRecord::Migration
  def change
    create_table :snips do |t|
      t.text "snippet"
      t.string "permalink"
      t.timestamps
    end
  end
end
