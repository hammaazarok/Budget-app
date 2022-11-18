class CreatePaymentsToGroupsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :payments, :groups do |t|
      t.index :payment_id
      t.index :group_id
    end
  end
end
