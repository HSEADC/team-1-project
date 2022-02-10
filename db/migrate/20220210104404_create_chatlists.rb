class CreateChatlists < ActiveRecord::Migration[6.1]
  def change
    create_table :chatlists do |t|
      t.boolean :quited

      t.timestamps
    end
  end
end
