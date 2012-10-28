class CreateWakesurfers < ActiveRecord::Migration
  def change
    create_table :wakesurfers do |t|
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
