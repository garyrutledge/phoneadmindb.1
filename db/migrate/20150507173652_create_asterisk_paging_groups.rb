class CreateAsteriskPagingGroups < ActiveRecord::Migration
  def change
    create_table :asterisk_paging_groups do |t|
      t.string :paging_extension
      t.string :name
      t.string :members

      t.timestamps
    end
  end
end
