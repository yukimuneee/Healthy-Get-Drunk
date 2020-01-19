class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer     :expence, null: false
      t.integer     :total_expence, null: false
      t.integer     :average_expence, null: false
      t.integer     :average_weight, null: false
      t.integer     :latest_weight , null: false
      t.integer     :gap_weight, null: false
      t.integer     :text 
      t.references  :user, foreign_key: true
      t.timestamps
    end
  end
end
