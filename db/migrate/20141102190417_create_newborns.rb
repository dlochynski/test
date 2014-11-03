class CreateNewborns < ActiveRecord::Migration
  def change
    create_table :newborns do |t|
      t.date :date_of_birth
      t.string :name
      t.decimal :number_of_weeks

      t.timestamps
    end
  end
end
