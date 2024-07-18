class CreateHugas < ActiveRecord::Migration[7.1]
  def change
    create_table :hugas do |t|

      t.timestamps
    end
  end
end
