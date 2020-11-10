class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.float :price
      t.datetime :deadline
      t.integer :govt_id
      t.integer :company_id

      t.timestamps
    end
  end
end
