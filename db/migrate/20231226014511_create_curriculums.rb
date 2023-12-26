class CreateCurriculums < ActiveRecord::Migration[7.0]
  def change
    create_table :curriculums do |t|
      t.string :name
      t.string :short_name
      t.text :description
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
