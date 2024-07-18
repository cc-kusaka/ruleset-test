class CreateFoos < ActiveRecord::Migration[7.1]
  def change
    create_table :foos do |t|

      t.timestamps
    end
  end
end
