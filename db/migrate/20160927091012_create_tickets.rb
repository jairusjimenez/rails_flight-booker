class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
    	t.references :booking, index: true
    	t.references :passenger, index: true

      t.timestamps
    end
  end
end
