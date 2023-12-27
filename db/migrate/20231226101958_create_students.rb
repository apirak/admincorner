class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :title_name
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :nickname_en
      t.date :date_of_birth
      t.string :gender
      t.string :current_school
      t.text :address
      t.string :phone_number
      t.string :email
      t.string :medication_allergies
      t.string :chronic_conditions
      t.string :emergency_contact_name
      t.string :emergency_contact_relationship
      t.string :emergency_contact_number
      t.string :parent_name
      t.string :parent_contact
      t.text :notes
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
