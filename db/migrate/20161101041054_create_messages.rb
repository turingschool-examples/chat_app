class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :username
      t.string :profile_img

      t.timestamps
    end
  end
end
