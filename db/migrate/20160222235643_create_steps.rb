class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.text :name

        t.belongs_to :goal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
