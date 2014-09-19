class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.belongs_to :album, index: true
      t.belongs_to :user, index: true
      t.belongs_to :recipient, index: true
      t.text :note

      t.timestamps
    end
  end
end
