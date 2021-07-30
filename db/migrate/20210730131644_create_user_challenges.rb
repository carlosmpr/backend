class CreateUserChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :user_challenges do |t|
      t.integer :user_id
      t.integer :code_challenge_id

      t.timestamps
    end
  end
end
