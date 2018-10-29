class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses, id: false do |t|
      t.string :name
      t.string :code, primary_key: true
      t.string :description

      t.timestamps
    end
  end
end
