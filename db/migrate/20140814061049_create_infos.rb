class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.integer :user_id
      t.text :about_you
      t.text :education
      t.text :skills
      t.text :hometown
      t.string :email
      t.string :phone_no
      t.datetime :dob
      t.string :religion
      t.text :gender
      t.text :languages

      t.timestamps
    end
  end
end
