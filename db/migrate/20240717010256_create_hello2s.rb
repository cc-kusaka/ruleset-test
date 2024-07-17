class CreateHello2s < ActiveRecord::Migration[7.1]
  def change
    create_table :hello2s do |t|

      t.timestamps
    end
  end
end
