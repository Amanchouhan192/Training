class AddTicketRefToClient < ActiveRecord::Migration[6.1]
  def change
    add_reference :tickets,:client,foreign_key:true
  end
end
