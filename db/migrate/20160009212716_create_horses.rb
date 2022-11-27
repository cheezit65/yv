class CreateHorses < ActiveRecord::Migration[6.0]
  def change
    create_table :horses do |t|
      t.string :Name
      t.string :HipNumber
      t.string :Gender
      t.string :Gait
      t.string :Description
      t.string :Sale
      t.string :PageViews
      t.string :BulkUploadVideoName

      t.timestamps null: false
    end
  end
end