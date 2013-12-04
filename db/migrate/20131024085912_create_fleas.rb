class CreateFleas < ActiveRecord::Migration
  def change
    create_table :fleas do |t|

      t.timestamps
    end
  end
end
