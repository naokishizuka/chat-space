class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :user
      t.integer :group_id
      t.string :text
      t.string :image
      t.timestamps
    end
  end
end
