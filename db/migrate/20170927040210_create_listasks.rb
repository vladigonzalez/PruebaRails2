class CreateListasks < ActiveRecord::Migration[5.1]
  def change
    create_table :listasks do |t|
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
