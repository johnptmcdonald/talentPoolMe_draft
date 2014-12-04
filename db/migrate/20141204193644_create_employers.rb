class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :name
      t.string :address
      t.string :website
      t.string :industry
      t.string :size
      t.string :city
      t.string :state
      t.string :country
      t.string :evp
      t.string :status

      t.timestamps null: false
    end
  end
end
