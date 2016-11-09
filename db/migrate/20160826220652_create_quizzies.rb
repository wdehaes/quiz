class CreateQuizzies < ActiveRecord::Migration
  def change
    create_table :quizzies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
