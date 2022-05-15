class AddNameLastSendActiveToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :active, :bool, default: true
    add_column :users, :last_send, :date, default: Date.today
  end
end
