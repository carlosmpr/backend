class CreateCodeChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :code_challenges do |t|
      t.string :name
      t.string :solution
      t.string :description
      t.string :instructions
      t.boolean :user_created
      t.integer :user_id
      t.integer :programing_language_id
      t.string :difficulty
      t.timestamps
    end
  end
end
