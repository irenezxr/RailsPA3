class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects, id: false do |t|
      t.string :name
      t.string :abbreviation
      t.string :id, primary_key: true

      t.timestamps
    end
  end
end
