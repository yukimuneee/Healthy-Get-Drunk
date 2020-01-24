class CreatePersonals < ActiveRecord::Migration[5.2]
  def change
    create_table :personals do |t|
      t.float        :height, null: false
      t.float        :weight, null: false
      t.integer      :age, null: false
      t.string       :month, null: false
      t.integer      :monthly_drinking_money, null: false
      t.references   :user, foreign_key: true
      t.timestamps
    end
  end
end
