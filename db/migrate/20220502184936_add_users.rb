class AddUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.bigint :version, null: false, default: 0
    end
  end
end
