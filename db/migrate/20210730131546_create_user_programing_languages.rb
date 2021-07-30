class CreateUserProgramingLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :user_programing_languages do |t|
      t.integer :user_id
      t.integer :programing_language_id

      t.timestamps
    end
  end
end
