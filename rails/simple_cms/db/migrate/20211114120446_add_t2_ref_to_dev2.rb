class AddT2RefToDev2 < ActiveRecord::Migration[6.1]
  def change
    add_reference :developer2s,:team,foreign_key:true
  end
end
