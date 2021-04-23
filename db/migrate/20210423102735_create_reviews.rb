class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :score
      t.integer :owner_id
      t.integer :service_id
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :streaming_service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
