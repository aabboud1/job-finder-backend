class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.int :job_id
      t.int :company_id
      t.int :bid_price
      t.datetime :time_to_completion
      t.string :notes

      t.timestamps
    end
  end
end
