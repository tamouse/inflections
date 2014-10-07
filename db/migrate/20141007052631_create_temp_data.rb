class CreateTempData < ActiveRecord::Migration
  def change
    create_table :temp_data do |t|
      t.string :this
      t.string :that
      t.belongs_to :location, index: true

      t.timestamps
    end
  end
end
