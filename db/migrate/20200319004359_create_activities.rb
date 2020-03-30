class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :location
      t.string :name
      t.date :date
      t.string :info

      t.timestamps
    end
  end
end
