class CreateProgramingLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :programing_languages do |t|
      t.string :name

      t.timestamps
    end
  end
end
