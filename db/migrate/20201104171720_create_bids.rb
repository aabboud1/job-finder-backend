class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.integer :job_id
      t.integer :company_id
      t.integer :bid_price
      t.datetime :time_to_completion
      t.string :notes

      t.timestamps
    end
  end
end
