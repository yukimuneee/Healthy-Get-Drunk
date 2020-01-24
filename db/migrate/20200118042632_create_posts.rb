class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer     :expence, null: false
      t.integer     :total_expence
      t.float       :average_expence
      t.float       :average_weight
      t.float       :latest_weight, null: false
      t.float       :gap_weight
      t.string      :text 
      t.integer     :user_id, foreign_key: true
      t.timestamps
    end
  end
end
