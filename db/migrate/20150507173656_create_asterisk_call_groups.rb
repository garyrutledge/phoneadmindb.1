class CreateAsteriskCallGroups < ActiveRecord::Migration
  def change
    create_table :asterisk_call_groups do |t|
      t.string :group
      t.string :members

      t.timestamps
    end
  end
end
