class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.float :price
      t.datetime :deadline
      t.int :govt_id
      t.int :compant_id
      t.int :bid_id

      t.timestamps
    end
  end
end
