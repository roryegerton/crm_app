class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :surname
      t.date :dob
      t.string :pps
      t.string :address1
      t.string :address2
      t.string :email
      t.string :telephone

      t.timestamps
    end
  end
end
