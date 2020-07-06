class CreateUserInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :user_infos do |t|
      t.string :phone
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
